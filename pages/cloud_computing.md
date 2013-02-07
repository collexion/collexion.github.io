---
layout: default
title: Cloud Computing - Collexion
---

<div id="page">

# Cloud Computing

##Contents

*[1
Purpose](#Purpose)


*[2
Resources](#Resources)


*[3
People](#People)


*[4
Operations](#Operations)##Purpose


To implement cloud infrastructure, publicize resources, and help others build applications targeted for cloud architecture.

##Resources


There are a few rack mounted machines in the space that we're going to set up Openstack on.

##People


*[User:Xtoddx](/pages/user:xtoddx.html)


*[Nikolaiwarner](/pages/user:nikolaiwarner.html)##Operations


Networking

is provided by the linksys wireless router.  See
[Router_Settings](/pages/router_settings.html).

compute002 host (the .12 address) is the
 in flat dhcp mode.  All public ips (floating ips, in Open Stack parlance, as they float between instances) should route here, and it will nat appropriately.  For each instance a bridge will be created to route traffic.  We cannot use the interface with the .12 address on as the flat_interface.  See
[http://docs.openstack.org/cactus/openstack-compute/admin/content/configuring-flat-dhcp-networking.html](http://docs.openstack.org/cactus/openstack-compute/admin/content/configuring-flat-dhcp-networking.html)

are created with `nova-manage network create` and can be tuned to various blocks of rfc 1918 space.  The default is to use 10.* addresses, but we are using 172.* addresses.  Coordinate with Mike A to get a proper setting for this, based on what the router is capable of, and read the source of nova-mange to see what the parameters should be.  (Seems that 172.30.2.0/24 is recommended).

User Accounts

The easiest way to create a new user account is to run `nova-manage user create USERNAME` on cloud001 (head node).  I'm not sure how we want to set up projects, it may make sense for there to only be one project, unless we start giving accounts to other organizations, such as the Urban League.  To create a project run `nova-manage project create PROJECTNAME USERNAME-FOR-MANAGER`.  To add new users to an existing project run `nova-manage project add PROJECTNAME USERNAME`.

</div>
