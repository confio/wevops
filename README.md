# Weave Ops

A set of scripts for simple deployment of [weave](https://github.com/iov-one/weave) and 
[tendermint](https://github.com/tendermint/tendermint) based applications.

## Goals

* Simplicity - so dev can easily understand how they work
* Extensibility - to easily customize and extend them for custom networks
* Limit feature creep - advanced functionality is in other repos (or a special "xtra" package)
* Security - this should be "safe enough" for basic deploys, no known security wholes, except DDoS vulnerability
* Documented - this is meant to be understood and modified, not a final product not to be touched

## Technologies

We use [terraform](https://www.terraform.io/) to construct the infrastructure
and a mix of [bash scripts](https://www.gnu.org/software/bash/) and
[ansible](https://www.ansible.com/) for deployment and upgrades.

These are all well-known and standardized operations tools that don't require too much (mental) overhead,
unlike Kubernetes, Chef/Puppet, CoreOs, etc. We are not trying to run a datacenter, just a few computers.

## Providers

This will likely target AWS and Digital Ocean as first supported providers, but should be easy to modify
and expand for many other providers that can be set up by terraform (or even plug in the credentials of
bare-metal machines to just use ansible)
