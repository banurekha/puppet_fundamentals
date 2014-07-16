# Puppet Fundamentals Exercises

## Commands to remember

Syntax validation:

    puppet parser validate your_file.pp

Execute a smoke test:

    puppet apply --noop tests/your_file.pp

Manually apply the puppet catalog as determined by the puppet master:

    puppet agent -t

## Things of note
- [Hiera can be used to set which classes get set on a node](http://docs.puppetlabs.com/hiera/1/puppet.html#assigning-classes-to-nodes-with-hiera-hierainclude)
