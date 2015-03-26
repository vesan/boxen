# This file manages Puppet module dependencies.
#
# It works a lot like Bundler. We provide some core modules by
# default. This ensures at least the ability to construct a basic
# environment.

# Shortcut for a module from GitHub's boxen organization
def github(name, *args)
  options ||= if args.last.is_a? Hash
    args.last
  else
    {}
  end

  if path = options.delete(:path)
    mod name, :path => path
  else
    version = args.first
    options[:repo] ||= "boxen/puppet-#{name}"
    mod name, version, :github_tarball => options[:repo]
  end
end

# Shortcut for a module under development
def dev(name, *args)
  mod "puppet-#{name}", :path => "#{ENV['HOME']}/src/boxen/puppet-#{name}"
end

# Includes many of our custom types and providers, as well as global
# config. Required.

github "boxen", "3.10.2"

# Support for default hiera data in modules

github "module_data", "0.0.3", :repo => "ripienaar/puppet-module-data"

# Core modules for a basic development environment. You can replace
# some/most of these if you want, but it's not recommended.

github "brewcask",    "0.0.6"
github "dnsmasq",     "2.0.1"
github "foreman",     "1.2.0"
github "gcc",         "2.2.0"
github "git",         "2.7.5"
github "go",          "2.1.0"
github "homebrew",    "1.11.2"
github "hub",         "1.4.0"
github "inifile",     "1.1.1", :repo => "puppetlabs/puppetlabs-inifile"
github "nginx",       "1.4.4"
github "nodejs",      "4.0.0"
github "openssl",     "1.0.0"
github "phantomjs",   "2.3.0"
github "pkgconfig",   "1.0.0"
github "repository",  "2.3.0"
github "ruby",        "8.1.7"
github "stdlib",      "4.2.1", :repo => "puppetlabs/puppetlabs-stdlib"
github "sudo",        "1.0.0"
github "xquartz",     "1.2.1"
github "alfred"
github "firefox"
github "gitx"
github "tmux"
github "kindle"
github "caffeine"
github "arq"
github "zsh"
github "osx"
github "divvy"
github "java"
github "clojure"
github "omnifocus"
github "vim"
github "chrome"
github "dash"
github "dropbox"
github "onepassword"
github "iterm2"
github "fluid"
github "transmit"
github "transmission"
github "heroku"
github "undercover"
github "textexpander"
github "spotify"
github "notational_velocity"
github "imagemagick"
github "ctags"
github "postgresapp"
github "flowdock"
github "skype"
github "vlc"
github "libreoffice"
github "phantomjs"
github "virtualbox"
github "flux"
github "github_for_mac"
github "fantastical", "0.0.3", :repo => "demonbane/puppet-fantastical"
github "ghostscript"
github "autoconf"
github "libtool"

# Optional/custom modules. There are tons available at
# https://github.com/boxen.
