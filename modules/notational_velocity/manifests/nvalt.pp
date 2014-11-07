# Install the nvAlt fork of Notational Velocity
# https://github.com/ttscoff/nv
class notational_velocity::nvalt {
  package { 'nvALT':
    source   => 'http://abyss.designheresy.com/nvaltb/nvalt2.2b111.zip',
    provider => 'compressed_app'
  }
}
