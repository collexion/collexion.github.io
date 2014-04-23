#!/usr/bin/env ruby

require 'net/http'
require 'nokogiri'
require 'html2markdown'

module WikiExtract

  def self.run(site)
    html = all_pages(site)
    links = links_from_html(html)
    extract_and_convert_pages(site, links)
    copy_index
  end

  private

  def self.all_pages(site)
    http_get(site, '/wiki/Special:AllPages')
  end

  def self.links_from_html(html)
    doc = html_doc(html)
    doc.xpath('//table[@class = "mw-allpages-table-chunk"]//tr/td/a').collect { |n| n['href'] }
  end

  def self.extract_and_convert_pages(site, links)
    links.each { |l| extract_and_convert_page(site, l) }
  end

  def self.extract_and_convert_page(site, link)
    html = http_get(site, link)
    doc = html_doc(html)
    title = title_from_doc(doc)
    first_heading = first_heading_from_doc(doc)
    content = content_doc(doc)
    new_content = html(remove_comments(rewrite_links(first_heading, content)))
    page = build_page(title, first_heading, new_content)
    write_markdown_page(filename(first_heading), page)
  end

  def self.title_from_doc(doc)
    doc.at_xpath('//head/title').text
  end

  def self.first_heading_from_doc(doc)
    doc.at_xpath('//h1[@id = "firstHeading"]/span').text
  end

  def self.content_doc(doc)
    doc.at_xpath('//div[@id = "mw-content-text"]')
  end

  def self.rewrite_links(first_heading, doc)
    doc.xpath('.//a').each { |a| a['href'] = rewrite_link(a) if rewritable_link?(a) }
    doc
  end

  def self.rewrite_link(link)
    newlink = link['href']
    newlink.gsub!(/\/wiki/, '')
    newlink.gsub!(' ', '_')
    newlink.gsub!('/', '-')
    "#{newlink.downcase}.html"
  end

  def self.remove_comments(doc)
    doc.xpath('//comment()').remove
    doc
  end

  def self.rewritable_link?(link)
    link['href'].match(/^\/wiki\//)
  end

  def self.html(doc)
    doc.inner_html
  end

  def self.filename(heading)
    name = heading.gsub(' ', '_')
    name = name.gsub('/', '-')
    "#{name.downcase}.md"
  end

  def self.build_page(title, first_heading, content)
    page = ""
    page << "---\n"
    page << "layout: default\n"
    page << "title: #{title}\n"
    page << "---\n\n"
    page << "# #{first_heading}\n\n"
    page << markdown(content)
    page
  end

  def self.write_markdown_page(filename, page)
    File.open(filename, 'w') { |f| f.write(page) }
  end

  def self.markdown(html)
    page = HTMLPage.new(:contents => html)
    page.markdown
  end

  def self.http_get(site, page)
    Net::HTTP.get(site, page)
  end

  def self.html_doc(html)
    Nokogiri::HTML(html)
  end

  def self.copy_index
    File.open('index.md', 'w') {|f| f.write(File.read("main_page.md")) }
  end
end

site = ARGV[0]
WikiExtract.run(site)
