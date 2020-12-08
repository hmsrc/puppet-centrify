class centrify::config (
  $dc_config_file                  = $centrify::dc_config_file,
  $nis                             = $centrify::nis,
  $nis_watch_enabled               = $centrify::nis_watch_enabled,
  $nis_networks                    = $centrify::nis_networks,
  $nis_update_interval             = $centrify::nis_update_interval,
  $nis_threads                     = $centrify::nis_threads,
  $nis_startup_delay               = $centrify::nis_startup_delay,
  $nis_maps_max                    = $centrify::nis_maps_max,
  $nis_maps_exluded                = $centrify::nis_maps_exluded,
  $nis_port_tcp                    = $centrify::nis_port_tcp,
  $nis_port_udp                    = $centrify::nis_port_udp,
  $nis_log_level                   = $centrify::nis_log_level,
  $adclient_clients_listen_backlog = $centrify::adclient_clients_listen_backlog,
  $adclient_cache_expires_gc       = $centrify::adclient_cache_expires_gc,
  $adclient_cache_expires          = $centrify::adclient_cache_expires,
  $adclient_paged_search_max       = $centrify::adclient_paged_search_max,
  $adclient_ldap_timeout           = $centrify::adclient_ldap_timeout,
  $adclient_zone_group_count       = $centrify::adclient_zone_group_count,
  $adclient_clients_threads        = $centrify::adclient_clients_threads,
  $dc_package_name                 = $centrify::dc_package_name,
  $adclient_cache_object_lifetime  = $centrify::adclient_cache_object_lifetime,
  $centrify_log_level              = $centrify::centrify_log_level,
  ) {
    file {$dc_config_file:
      ensure  => file,
      owner   => 'root',
      group   => 'root',
      mode    => '0644',
      content => template('centrify/centrifydc.conf.erb'),
      require => Package[$dc_package_name],
    }

}
