class people::vesan::applications {
  # Development

  include gitx::dev
  include zsh
  include clojure
  include dash
  include iterm2::dev
  include heroku
  include imagemagick
  include ctags
  include postgresapp
  include phantomjs
  include virtualbox
  include github_for_mac
  include tmux
  package { 'reattach-to-user-namespace':
    ensure => present
  }
  include ghostscript

  # Utilities

  include alfred
  include caffeine
  include textexpander
  include flux
  include divvy
  file { "${home}/Library/Preferences/com.mizage.divvy.plist":
    ensure => link,
    target => "${home}/Dropbox/Sync/com.mizage.divvy.plist",
  }

  # Apps

  include firefox
  include kindle
  include arq
  include omnifocus
  include chrome
  include chrome::canary
  include dropbox
  include onepassword
  include fluid
  include transmit
  include transmission
  include undercover
  include spotify
  include notational_velocity::nvalt
  include flowdock
  include skype
  include vlc
  class { 'libreoffice':
    version => '4.2.4',
  }

  # Tab switching keyboard bindings

  shortcut {
    "Terminal Next Tab":
      app  => "com.apple.Terminal",
      key  => "cmd-alt-\\U2192",
      menu => "Select Next Tab";
    "Terminal Previous Tab":
      app  => "com.apple.Terminal",
      key  => "cmd-alt-\\U2190",
      menu => "Select Previous Tab";
    "Finder Next Tab":
      app  => "com.apple.finder",
      key  => "cmd-alt-\\U2192",
      menu => "Select Next Tab";
    "Finder Previous Tab":
      app  => "com.apple.finder",
      key  => "cmd-alt-\\U2190",
      menu => "Select Previous Tab";
    "Iterm Next Tab":
      app  => "com.googlecode.iterm2",
      key  => "cmd-alt-\\U2192",
      menu => "Select Next Tab";
    "Iterm Previous Tab":
      app  => "com.googlecode.iterm2",
      key  => "cmd-alt-\\U2190",
      menu => "Select Previous Tab";
    "Adium Next Tab":
      app  => "com.adiumX.adiumX",
      key  => "cmd-alt-\\U2192",
      menu => "Next Chat";
    "Adium Previous Tab":
      app  => "com.adiumX.adiumX",
      key  => "cmd-alt-\\U2190",
      menu => "Previous Chat";
    "Safari Next Tab":
      app  => "com.apple.Safari",
      key  => "cmd-alt-\\U2192",
      menu => "Select Next Tab";
    "Safari Previous Tab":
      app  => "com.apple.Safari",
      key  => "cmd-alt-\\U2190",
      menu => "Select Previous Tab";
  }
}
