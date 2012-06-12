[puppet_url]: http://puppetlabs.com/

# puppet-manifests

Some of my [puppet][puppet_url] manifests configurations.

## Installation

You'll want to merge it with your system's `/etc/puppet/manifests` directory. You can do this manually, or in git.
The following command sequence should accomplish the latter option, but has not been tested thoroughly:

1. `su root`
2. `cd /etc/puppet/manifests`
3. `git init`
4. `git remote add AndersDJohnson git@github.com:AndersDJohnson/puppet-manifests.git`
5. `git fetch AndersDJohnson`
6. `git merge --strategy ours --no-commit AndersDJohnson/master`
7. `git read-tree -m -u AndersDJohnson/master`

You should then be able to get updates with:

* `git pull -s subtree AndersDJohnson master`

