# Install Notational Velocity
# http://notational.net
class notational_velocity {
  package { 'Notational Velocity':
    source   => 'http://notational.net/NotationalVelocity.zip',
    provider => 'compressed_app'
  }
}
