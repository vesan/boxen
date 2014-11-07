require 'spec_helper'

describe 'omnifocus' do
  it do
    should contain_package('OmniFocus').with({
      :source    => 'http://www.omnigroup.com/ftp1/pub/software/MacOSX/10.6/OmniFocus-1.10.4.dmg',
      :provider	 => 'appdmg_eula'
    })
  end
end
