class people::vesan::git {
  package { 'git-extras':
    ensure => present
  }

  git::config::global { 'user.name':
    value  => $::boxen_user
  }
  git::config::global { 'user.email':
    value  => 'vesa@vesavanska.com'
  }
  git::config::global { 'github.user':
    value  => $::boxen_user
  }

  git::config::global { 'push.default':
    value  => 'current'
  }
  git::config::global { 'gui.fontui':
    value  => '-family Consolas -size 13 -weight normal -slant roman -underline 0 -overstrike 0'
  }
  git::config::global { 'gui.fontdiff':
    value  => '-family Consolas -size 13 -weight normal -slant roman -underline 0 -overstrike 0'
  }
  git::config::global { 'merge.tool':
    value  => 'opendiff'
  }
  git::config::global { 'merge.summary':
    value  => 'true'
  }
  git::config::global { 'branch.autosetupmerge':
    value  => 'true'
  }
  git::config::global { 'diff.color':
    value  => 'auto'
  }
  git::config::global { 'diff.rename':
    value  => 'copy'
  }
  git::config::global { 'pager.color':
    value  => 'true'
  }
  git::config::global { 'status.color':
    value  => 'auto'
  }
  git::config::global { 'color.diff':
    value  => 'auto'
  }
  git::config::global { 'color.status':
    value  => 'auto'
  }
  git::config::global { 'color.branch':
    value  => 'auto'
  }
  git::config::global { 'color.interactive':
    value  => 'auto'
  }

  # Aliases

  git::config::global { 'alias.st':
    value  => 'status'
  }
  git::config::global { 'alias.ci':
    value  => 'commit'
  }
  git::config::global { 'alias.co':
    value  => 'checkout'
  }
  git::config::global { 'alias.br':
    value  => 'branch'
  }
  git::config::global { 'alias.di':
    value  => 'diff'
  }
  git::config::global { 'alias.dc':
    value  => 'diff --cached'
  }
  git::config::global { 'alias.ignored':
    value  => '!git ls-files --others --exclude-standard'
  }
  git::config::global { 'alias.unadd':
    value  => 'reset HEAD'
  }
  git::config::global { 'alias.lg':
    value  => "log --graph --pretty=tformat:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%Creset %an' --abbrev-commit --date=relative"
  }
  git::config::global { 'alias.up':
    value  => "!sh -c 'git pull --rebase --prune && git log --pretty=format:\"%Cred%ae %Creset- %C(yellow)%s %Creset(%ar)\" HEAD@{1}..'"
  }
  git::config::global { 'alias.amend':
    value  => 'commit --amend'
  }
  git::config::global { 'alias.aa':
    value  => 'add --all'
  }
  git::config::global { 'alias.head':
    value  => '!git l -1'
  }
  git::config::global { 'alias.ra':
    value  => '!git r --all'
  }
  git::config::global { 'alias.ff':
    value  => 'merge --ff-only'
  }
  git::config::global { 'alias.pullff':
    value  => 'pull --ff-only'
  }
  git::config::global { 'alias.la':
    value  => '!git l --all'
  }
  git::config::global { 'alias.div':
    value  => 'divergence'
  }
  git::config::global { 'alias.gn':
    value  => 'goodness'
  }
  git::config::global { 'alias.gnc':
    value  => 'goodness --cached'
  }
  git::config::global { 'alias.fa':
    value  => 'fetch --all'
  }

  # For some reason these don't work with the normal syntax.
  exec { "Single letter Git aliases":
    command =>
     "git config --global --replace-all alias.l 'log --graph --abbrev-commit --date=relative' \
      git config --global --replace-all alias.l '!git head'; \
      git config --global --replace-all alias.l '!git l -20';",
    path => "${boxen::config::home}/homebrew/bin",
  }

  exec { "Git Global Settings":
    command =>
     "git config --global --replace-all color.\"branch\".current yellow reverse; \
      git config --global --replace-all color.\"branch\".local yellow; \
      git config --global --replace-all color.\"branch\".remote green; \
      git config --global --replace-all color.\"diff\".meta yellow bold; \
      git config --global --replace-all color.\"diff\".frag magenta bold; \
      git config --global --replace-all color.\"diff\".old red bold; \
      git config --global --replace-all color.\"diff\".new green bold; \
      git config --global --replace-all color.\"status\".added yellow; \
      git config --global --replace-all color.\"status\".untracked cyan; \
      git config --global --replace-all color.\"status\".changed green; \
      git config --global --replace-all diff.\"ruby\".funcname '^ *\\(\\(class\\|module\\|def\\) .*\\)'",
    path => "${boxen::config::home}/homebrew/bin",
  }
}
