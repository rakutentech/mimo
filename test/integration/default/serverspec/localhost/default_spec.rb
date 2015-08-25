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
  it { should be_grouped_by 'root' }
end
