# Osiris: Installation Setup for System Administrators

class groups::osiris {

  notify { 'Hello Osiris Member, we\'re setting up your workstations': }

  include atom
  include boot2docker
  include iterm2::stable
  include keynote
  include mysql
  include python
  include sourcetree
  include sublime_text
  include sqldeveloper
  include tunnelblick
  include virtualbox
  include zsh

  package { 'autodmg':
    ensure          => installed,
    provider        => 'brewcask',
    install_options => [
      '--no-binaries',
      '--appdir=/Applications'
    ]
  }

  package { 'cord':
    ensure          => installed,
    provider        => 'brewcask',
    install_options => [
      '--no-binaries',
      '--appdir=/Applications'
    ]
  }

  package { 'docker-compose':
    ensure          => installed,
    provider        => 'brewcask',
    install_options => [
      '--no-binaries',
      '--appdir=/Applications'
    ]
  }

  package { 'evernote':
    ensure          => installed,
    provider        => 'brewcask',
    install_options => [
      '--no-binaries',
      '--appdir=/Applications'
    ]
  }

  package { 'filezilla':
    ensure          => installed,
    provider        => 'brewcask',
    install_options => [
      '--no-binaries',
      '--appdir=/Applications'
    ]
  }

  package { 'github':
    ensure          => installed,
    provider        => 'brewcask',
    install_options => [
      '--no-binaries',
      '--appdir=/Applications'
    ]
  }

  package { 'mysqlworkbench':
    ensure          => installed,
    provider        => 'brewcask',
    install_options => [
      '--no-binaries',
      '--appdir=/Applications'
    ]
  }

  package { 'remote-desktop-manager':
    ensure          => installed,
    provider        => 'brewcask',
    install_options => [
      '--no-binaries',
      '--appdir=/Applications'
    ]
  }

  package { 'sequel-pro':
    ensure          => installed,
    provider        => 'brewcask',
    install_options => [
      '--no-binaries',
      '--appdir=/Applications'
    ]
  }

  package { 'skitch':
    ensure          => installed,
    provider        => 'brewcask',
    install_options => [
      '--no-binaries',
      '--appdir=/Applications'
    ]
  }

  package { 'teamviewer':
    ensure          => installed,
    provider        => 'brewcask',
    install_options => [
      '--no-binaries',
      '--appdir=/Applications'
    ]
  }

  package { 'vim':
    ensure => present,
  }

  package { 'vmware-fusion':
    ensure          => installed,
    provider        => 'brewcask',
    install_options => [
      '--no-binaries',
      '--appdir=/Applications'
    ]
  }

  package { 'wireshark':
    ensure          => installed,
    provider        => 'brewcask',
    install_options => [
      '--no-binaries',
      '--appdir=/Applications'
    ]
  }

  # Vagrant Box Setup:
  vagrant::box { 'squeeze64/vmware_fusion':
    source => 'https://s3.amazonaws.com/github-ops/vagrant/squeeze64-6.0.7-vmware_fusion.box'
  }

  # Oh-My-ZSH
  exec { 'install oh-my-zsh plugin':
    command => "curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh",
    onlyif => [
      "test ! -d ${home}/.oh-my-zsh"
    ]
  }
}
