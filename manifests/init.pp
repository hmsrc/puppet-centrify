class centrify (
  String           $dc_package_name                 = $centrify::params::dc_package_name,
  String           $nis_package_name                = $centrify::params::nis_package_name,
  String           $dc_service_name                 = $centrify::params::dc_service_name,
  String           $nis_service_name                = $centrify::params::nis_service_name,
  String           $dc_config_file                  = $centrify::params::dc_config_file,
  String           $dc_zone                         = $centrify::params::dc_zone,
  String           $dc_container                    = $centrify::params::dc_container,
  String           $dc_join_user                    = $centrify::params::dc_join_user,
  String           $dc_join_passwd                  = $centrify::params::dc_join_passwd,
  String           $dc_domain                       = $centrify::params::dc_domain,
  Optional[String] $dc_join_dnsname                 = $centrify::params::dc_join_dnsname,
  Boolean          $nis                             = $centrify::params::nis,
  Boolean          $nis_watch_enabled               = $centrify::params::nis_watch_enabled,
  Array            $nis_networks                    = $centrify::params::nis_networks,
  Integer          $nis_update_interval             = $centrify::params::nis_update_interval,
  Integer          $nis_threads                     = $centrify::params::nis_threads,
  Integer          $nis_startup_delay               = $centrify::params::nis_startup_delay,
  Integer          $nis_maps_max                    = $centrify::params::nis_maps_max,
  Array            $nis_maps_exluded                = $centrify::params::nis_maps_exluded,
  Optional[Integer] $nis_port_tcp                   = $centrify::params::nis_port_tcp,
  Optional[Integer] $nis_port_udp                   = $centrify::params::nis_port_udp,
  String           $nis_log_level                   = $centrify::params::nis_log_level,
  Integer          $adclient_clients_listen_backlog = $centrify::params::adclient_clients_listen_backlog,
  Integer          $adclient_cache_expires_gc       = $centrify::params::adclient_cache_expires_gc,
  Integer          $adclient_cache_expires          = $centrify::params::adclient_cache_expires,
  Integer          $adclient_paged_search_max       = $centrify::params::adclient_paged_search_max,
  Integer          $adclient_ldap_timeout           = $centrify::params::adclient_ldap_timeout,
  Integer          $adclient_zone_group_count       = $centrify::params::adclient_zone_group_count,
  Integer          $adclient_clients_threads        = $centrify::params::adclient_clients_threads,
  Integer          $adclient_cache_object_lifetime  = $centrify::params::adclient_cache_object_lifetime,
  String           $centrify_log_level              = $centrify::params::centrify_log_level,
  ) inherits centrify::params {


    include ::centrify::install
    include ::centrify::config
    include ::centrify::join
    include ::centrify::service
}
