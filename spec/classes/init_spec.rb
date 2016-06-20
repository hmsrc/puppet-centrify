require 'spec_helper'
describe 'centrify' do

  context 'with defaults for all parameters' do
    it { should contain_class('centrify') }
  end
end
