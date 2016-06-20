class centrify::config (
  $dc_config_file                  = $centrify::dc_config_file,
  $nis                             = $centrify::nis,
  $nis_update_interval             = $centrify::nis_update_interval,
  $nis_threads                     = $centrify::nis_threads,
  $nis_startup_delay               = $centrify::nis_startup_delay,
  $nis_maps_max                    = $centrify::nis_maps_max,
  $adclient_clients_listen_backlog = $centrify::adclient_clients_listen_backlog,
  $adclient_cache_expires_gc       = $centrify::adclient_cache_expires_gc,
  $adclient_cache_expires          = $centrify::adclient_cache_expires,
  $adclient_paged_search_max       = $centrify::adclient_paged_search_max,
  $adclient_ldap_timeout           = $centrify::adclient_ldap_timeout,
  $adclient_zone_group_count       = $centrify::adclient_zone_group_count,
  $adclient_clients_threads        = $centrify::adclient_clients_threads,
  $adclient_cache_flush_interval   = $centrify::adclient_cache_flush_interval,
  ) {

    file {$dc_config_file:
      ensure   => file,
      owner    => 'root',
      group    => 'root',
      mode     => '0644',
      contents => template('centrify/centrifydc.conf.erb'),
    }

}
