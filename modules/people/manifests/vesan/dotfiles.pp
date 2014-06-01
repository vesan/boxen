class people::vesan::dotfiles {
  $home     = "/Users/${::boxen_user}"
  $dotfiles = "${boxen::config::srcdir}/dotfiles"

  repository { $dotfiles:
    source  => 'vesan/dotfiles'
  }

  file { "${home}/.tmux.conf":
    ensure => link,
    target => "${dotfiles}/tmux.conf",
    require => Repository[$dotfiles],
  }

  file { "${home}/.ackrc":
    ensure => link,
    target => "${dotfiles}/ackrc",
    require => Repository[$dotfiles],
  }

  file { "${home}/.agignore":
    ensure => link,
    target => "${dotfiles}/agignore",
    require => Repository[$dotfiles],
  }

  file { "${home}/.config":
    ensure => link,
    target => "${dotfiles}/config",
    require => Repository[$dotfiles],
  }

  file { "${home}/.gvimrc":
    ensure => link,
    target => "${dotfiles}/gvimrc",
    require => Repository[$dotfiles],
  }

  file { "${home}/.gitignore":
    ensure => link,
    target => "${dotfiles}/gitignore",
    require => Repository[$dotfiles],
  }

  file { "${home}/.irbrc":
    ensure => link,
    target => "${dotfiles}/irbrc",
    require => Repository[$dotfiles],
  }

  file { "${home}/.octaverc":
    ensure => link,
    target => "${dotfiles}/octaverc",
    require => Repository[$dotfiles],
  }

  file { "${home}/.rvmrc":
    ensure => link,
    target => "${dotfiles}/rvmrc",
    require => Repository[$dotfiles],
  }

  file { "${home}/.sleep":
    ensure => link,
    target => "${dotfiles}/sleep",
    require => Repository[$dotfiles],
  }

  file { "${home}/.vim":
    ensure => link,
    target => "${dotfiles}/vim",
    require => Repository[$dotfiles],
  }

  file { "${home}/.vimrc":
    ensure => link,
    target => "${dotfiles}/vimrc",
    require => Repository[$dotfiles],
  }

  file { "${home}/.zsh":
    ensure => link,
    target => "${dotfiles}/zsh",
    require => Repository[$dotfiles],
  }

  file { "${home}/.zshenv":
    ensure => link,
    target => "${dotfiles}/zshenv",
    require => Repository[$dotfiles],
  }

  file { "${home}/.zshrc":
    ensure => link,
    target => "${dotfiles}/zshrc",
    require => Repository[$dotfiles],
  }
}
