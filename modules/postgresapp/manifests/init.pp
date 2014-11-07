# Public: Install Postgres.app to /Applications.
#
# Examples
#
#   include postgresapp

class postgresapp {
  package { 'Postgresapp':
    source   => 'http://postgres-app.s3.amazonaws.com/PostgresApp-9-2-2-0.zip',
    provider => 'compressed_app',
  }
}
