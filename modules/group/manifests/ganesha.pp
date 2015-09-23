# Ganesha: Installation Setup for Production team

class groups::ganesha {

  notify { 'Hello Ganesha member, Let\'s set you up.': }

  include cyberduck
  include keynote
  include winzip

  package { 'adobe-reader':
    ensure          => installed,
    provider        => 'brewcask',
    install_options => [
      '--no-binaries',
      '--appdir=/Applications'
    ],
  }

  package { 'yemuzip':
    ensure          => installed,
    provider        => 'brewcask',
    install_options => [
      '--no-binaries',
      '--appdir=/Applications'
    ],
  }

  package { 'unrarx':
    ensure          => installed,
    provider        => 'brewcask',
    install_options => [
      '--no-binaries',
      '--appdir=/Applications'
    ],
  }

  package { 'filezilla':
    ensure          => installed,
    provider        => 'brewcask',
    install_options => [
      '--no-binaries',
      '--appdir=/Applications'
    ],
  }


}
