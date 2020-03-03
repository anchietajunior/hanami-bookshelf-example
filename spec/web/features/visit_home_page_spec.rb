require "features_helper"

RSpec.describe 'Visit home' do

  it 'is successfull' do
    visit '/'
    expect(page).to have_content('Bookshelf')
  end
end