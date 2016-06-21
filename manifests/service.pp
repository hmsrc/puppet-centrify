class centrify::service (
  $nis              = $centrify::nis,
  $dc_service_name  = $centrify::dc_service_name,
  $nis_service_name = $centrify::nis_service_name,
  $dc_config_file   = $centrify::dc_config_file,
  ) {

    service { $dc_service_name:
      ensure     => running,
      name       => $dc_service_name,
      enable     => true,
      hasstatus  => true,
      hasrestart => true,
      subscribe  => File[$dc_config_file],
    }

    if $nis == true {
      service { $nis_service_name:
        ensure     => running,
        name       => $nis_service_name,
        enable     => true,
        hasstatus  => true,
        hasrestart => true,
        subscribe  => File[$dc_config_file],
      }
    }
  }
