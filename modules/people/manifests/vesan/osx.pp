class people::vesan::osx {
  osx::recovery_message { "If this computer is found, please call +358 50 307 9234": }

  include osx::global::enable_keyboard_control_access
  include osx::global::enable_standard_function_keys
  include osx::global::expand_save_dialog
  include osx::global::disable_autocorrect

  include osx::dock::2d

  include osx::finder::unhide_library

  include osx::universal_access::ctrl_mod_zoom

  include osx::keyboard::capslock_to_control

  class { 'osx::global::natural_mouse_scrolling':
    enabled => false
  }

  class { 'osx::dock::position':
    position => 'left'
  }

  class { 'osx::mouse::button_mode':
    mode => 2
  }
}
