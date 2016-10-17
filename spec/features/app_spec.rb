require 'spec_helper'

describe 'DatabaseServer' do
  scenario 'can set keys and values' do
    visit '/set?key=value'
    page.status_code.should be 200
    expect(page.has_content?("key, value"))
  end
end
