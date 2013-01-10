# SElinux Puppet Module

## Summary
This module does not actually manage SElinux, it's simply used to ensure the mode is set properly for the application running system. It will alert the user when their mode is incorrect, but not take any action.

This module was written by Sam Kottler (shk@linux.com).

## Usage
The `selinux` class is only to known to work on RHEL-based systems.

The class is parameterized, so you need to specify some parameters when
you call it:

#### Parameters:

$mode (disabled, permissive, or enforcing) - the SElinux mode required
for the system to work properly.

$application - the name of the application with the SElinux mode
dependency.

``` ruby
  class { 'selinux':
    mode => 'enforcing',
    application => 'myapp'
  }
```
