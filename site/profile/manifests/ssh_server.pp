class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCvqNHzTB/kGXjWN9ZYkCbEfBRaocu9BCGnucGoTEmYl6Eq2BdClOxUUCUVFkH3YS5irx0Nb198+saYp6GTvDSQ2xkJn6occ4+qbX5LQyuOpN2U7AS+9PCULr34o6Uxsd+ZKn9IgX/3kgPDCzay0KiA6rshTJSZZ6sYwZ8NZg41I7v4Kblz5XYW7crzFzIu8KLoy31HwBLsMMj8uLn/TcvOrDMITDVw91xqisO0EOgbifN2nbQGRuxuto0GVYZbjUlREs4Z8Mm80bCK/kXNJTUvwFu1R56xiB71kfsWVFCtGFqNQb0cB407WYlKAJyiz/bJMTI6iI+ZNkZgzR18AOHx',
  }  
}
