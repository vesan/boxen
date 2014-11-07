# Public: Install Kindle to /Applications.
#
# include kindle
class kindle {
  package { 'Kindle':
    provider => 'appdmg',
    source => 'http://kindleformac.amazon.com/40381/KindleForMac.dmg',
  }
}
