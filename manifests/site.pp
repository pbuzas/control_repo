node default {
}
node 'master.puppet.vm' {
  include role::master_server
  file { '/root/README':
    ensure => file,
    content => $fqdn,
  }
}

node /^web/ {
  inxlude role::app_server
}

node /^db/ {
  inxlude role::db_server
}
