class centrify::install (
  $dc_package_name     = $centrify::dc_package_name,
  $dc_package_version  = $centrify::dc_package_version,
  $nis                 = $centrify::nis,
  $nis_package_name    = $centrify::nis_package_name,
  $nis_package_version = $centrify::nis_package_version,
  ) {
    package {$dc_package_name:
      ensure => $dc_package_version,
    }

    if $nis == true {
      package {$nis_package_name:
        ensure => $nis_package_version,
      }
    }
  }
