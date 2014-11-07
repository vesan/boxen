require 'spec_helper'
# Rename this file to classname_spec.rb
# Check other boxen modules for examples
# or read http://rspec-puppet.com/tutorial/
describe 'notational_velocity' do
  it do
    should contain_class('notational_velocity')
    should contain_package('Notational Velocity').with({
      :source   => 'http://notational.net/NotationalVelocity.zip',
      :provider => 'compressed_app'
    })
  end
end
