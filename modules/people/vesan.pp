class people::vesan {
  include people::vesan::dotfiles
  include people::vesan::osx
  include people::vesan::git
  include people::vesan::applications

  # Vim
  package { 'vim':
    require => Package['mercurial']
  }
  # Install mercurial since the vim brew package don't satisfy the requirement (vim is fetched using $ hg)
  package { 'mercurial':
    ensure => installed
  }

  exec { "Install plugins":
    command =>
     "vim +PluginInstall +qall",
    path => "${boxen::config::home}/homebrew/bin",
    require => Package['vim']
  }

  nodejs::version { 'v4.2.1': }
  nodejs::version { 'v4.2.3': }
  nodejs::version { 'v4.3': }
}
