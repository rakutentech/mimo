require 'spec_helper'

describe command('nodejs --version') do
  its(:exit_status) { should eq 0 }
end

describe command('node --version') do
  its(:exit_status) { should eq 0 }
end

describe command('npm --version') do
  its(:exit_status) { should eq 0 }
end

describe file('/opt/mimo') do
  it { should exist }
  it { should be_directory }
  it { should be_mode '755' }
  it { should be_owned_by 'root' }
  it { should be_grouped_into 'root' }
end

describe port(3000) do
  it { should be_listening.on('0.0.0.0').with('tcp') }
end

describe service('mimo') do
  it { should be_enabled }
  it { should be_running.under('upstart') }
end

describe process('node') do
  it { should be_running }
  its(:user) { should eq 'mimo' }
  its(:args) { should match(/app\.js/) }
end
