class selinux(
  $mode,
  $application,
) {
  case $operatingsystem {
    'CentOS', 'Fedora', 'RedHat': {
      if ($selinux_current_mode != $mode) {
        if ($selinux_config_mode == $mode) {
          notice("The SElinux mode is set properly (to $selinux_config_mode) in configuration, but not currently in $selinux_current_mode, which will cause problems for $application. Restart the machine to correct this.")
        } else {
          notice("The SElinux mode is set to $selinux_config_mode, but $application requires it to be $mode")
        }
      }
    }
  }
}
