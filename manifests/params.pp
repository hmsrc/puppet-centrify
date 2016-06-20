class centrify::params {
  case $::osfamily {
    'RedHat': {
      $dc_package_name                 = 'CentrifyDC'
      $nis_package_name                = 'CentrifyDC-nis'
    }
    default: {
      fail("${::operatingsystem} not supported")
    }
  }
      $dc_package_version              = 'installed'
      $nis_package_version             = 'installed'
      $dc_service_name                 = 'centrifydc'
      $nis_service_name                = 'adnisd'
      $dc_config_file                  = '/etc/centrifydc/centrifydc.conf'
      $dc_zone                         = undef
      $dc_container                    = undef
      $dc_join_user                    = undef
      $dc_join_passwd                  = undef
      $dc_domain                       = undef
      $nis                             = false
      $nis_networks                    = ['0/0'] #array for nets to serve nis to, in 192.168.1.0/255.255.255.0 format.
      $nis_update_interval             = 1200,
      $nis_threads                     = 4,
      $nis_startup_delay               = 60,
      $nis_maps_max                    = 2,
      $adclient_clients_listen_backlog = 200
      $adclient_cache_expires_gc       = 600
      $adclient_cache_expires          = 600
      $adclient_paged_search_max       = 500
      $adclient_ldap_timeout           = 30
      $adclient_zone_group_count       = 5000
      $adclient_clients_threads        = 2
      $adclient_cache_flush_interval   = 1200
}
