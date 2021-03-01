node default {
}
node 'master.puppet.vm' {
  include role::master_server
}

node /^web/ {
  inxlude role::app_server
}

node /^db/ {
  inxlude role::db_server
}
