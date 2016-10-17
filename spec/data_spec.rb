require 'spec_helper'
require 'data_store'


  describe DataStore do
  subject(:store) { described_class.new }

  it 'can save params' do
    store.save_params(["key1", "value1"])
    expect(store.key).to eq 'key1'
  end

  it 'can extract key' do
  end
end
