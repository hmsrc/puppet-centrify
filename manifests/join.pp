class centrify::join (
  $dc_zone         = $centrify::dc_zone,
  $dc_container    = $centrify::dc_container,
  $dc_join_user    = $centrify::dc_join_user,
  $dc_join_passwd  = $centrify::dc_join_passwd,
  $dc_domain       = $centrify::dc_domain,
  $dc_join_dnsname = $centrify::dc_join_dnsname,
  ) {
    #Do adjoin if we're not already joined.

    if $dc_join_dnsname != undef {
      $join_cmd = "adjoin -V -u \'${dc_join_user}\' -p \'${dc_join_passwd}\' -z \'${dc_zone}\' -D \'${dc_join_dnsname}\' \'${dc_domain}\'"
    } else {
      $join_cmd = "adjoin -V -u \'${dc_join_user}\' -p \'${dc_join_passwd}\' -z \'${dc_zone}\' \'${dc_domain}\'"
    }
    exec { 'adjoin':
      path    => '/usr/bin:/usr/sbin:/bin',
      command => ,
      unless  => "adinfo -d | grep ${dc_domain}",
      notify  => Exec['run_adflush_and_adreload'],
    }

    exec { 'run_adflush_and_adreload':
      path        => '/usr/bin:/usr/sbin:/bin',
      command     => 'adflush && adreload',
      refreshonly => true,
    }
  }
