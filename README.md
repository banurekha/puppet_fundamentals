# Puppet Fundamentals Exercises

## Commands to remember

Syntax validation:

    puppet parser validate your_file.pp

Execute a smoke test:

    puppet apply --noop tests/your_file.pp

Manully apply the puppet catalog as determined by the puppet master:

    puppet agent -t
