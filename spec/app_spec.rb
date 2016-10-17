require_relative '../app.rb'
require_relative 'spec_helper'

describe 'DatabaseServer' do

  it 'can extract params' do
    visit('/set?key=value')
    expect(page).to have_content(["key", "value"])
  end
  it 'can extract key' do
    visit('/get?key=mykey')
    expect(page).to have_content('mykey')
  end
end
