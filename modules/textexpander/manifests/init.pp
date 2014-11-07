class textexpander {
  package { 'textexpander':
    provider   => 'compressed_app',
    source => 'http://cdn.smilesoftware.com/TextExpander_4.1.zip'
  }
}
