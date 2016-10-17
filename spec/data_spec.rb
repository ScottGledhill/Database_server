require 'spec_helper'

  describe DataStore do
  subject(:store) { described_class.new }

  it 'can save params' do
    store.save_params({"key"=>"value"})
    expect(store.value).to eq 'value'
    expect(store.key).to eq 'key'
  end

  it 'can extract key' do
    store.extract_key({"key"=>"mykey"})
    expect(store.key).to eq "mykey"
  end
end
