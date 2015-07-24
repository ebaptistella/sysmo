
exec { "apt-update":
  command => "/usr/bin/apt-get update"
}

package { ["openjdk-8-jre", "wget"]:
    ensure => installed,
    require => Exec["apt-update"]
}
