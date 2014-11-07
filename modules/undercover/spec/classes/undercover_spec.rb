require 'spec_helper'

describe 'undercover' do
  it do
    should contain_package('Undercover').with({
      :provider => 'apppkg',
      :source   => 'http://assets.undercoverhq.com/client/5.1.2/undercover_mac.pkg'
    })
  end
end
