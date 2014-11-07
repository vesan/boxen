require 'spec_helper'
# Rename this file to classname_spec.rb
# Check other boxen modules for examples
# or read http://rspec-puppet.com/tutorial/
describe 'notational_velocity::nvalt' do
  it do
    should contain_class('notational_velocity::nvalt')
    should contain_package('nvALT').with({
      :source   => 'http://abyss.designheresy.com/nvaltb/nvalt2.2b111.zip',
      :provider => 'compressed_app'
    })
  end
end
