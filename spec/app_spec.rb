require_relative '../app.rb'
require_relative 'spec_helper'

describe 'DatabaseServer' do
  it 'can extract key' do
    visit('/get?key=mykey')
    expect(page).to have_content('mykey')
  end
end
