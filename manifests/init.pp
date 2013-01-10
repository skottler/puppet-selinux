class selinux(
  $mode,
  $application,
) {
  if ($selinux_current_mode != $mode) {
    if ($selinux_config_mode == $mode) {
      notice("The SElinux mode is set properly in configuration, but not currently running properly for $application. Restart the machine to correct this or run setenforce 0.")
    } else {
      notice("The SElinux mode is set to $selinux_config_mode, but $application requires it to be $mode")
    }
  }
}
