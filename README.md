# Puppet Fundamentals Exercises

## Things of note
- [Type Reference](http://docs.puppetlabs.com/references/latest/type.html)
- [Puppet Forge](https://forge.puppetlabs.com)
- Hiera can be used to set values in parametrized classes without requiring any code changes.
- [Hiera can be used to set which classes get applied on a node](http://docs.puppetlabs.com/hiera/1/puppet.html#assigning-classes-to-nodes-with-hiera-hierainclude)

## Commands to remember

Syntax validation:

    puppet parser validate your_file.pp

Execute a smoke test:

    puppet apply --noop tests/your_test_file.pp

Manually apply the puppet catalog as determined by the puppet master:

    puppet agent -t

Install a puppet module locally:

    puppet module install 'author/module'
