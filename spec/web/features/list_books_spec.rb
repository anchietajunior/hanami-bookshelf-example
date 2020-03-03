require "features_helper"

RSpec.describe 'Listing books' do
  let(:repository) { BookRepository.new }
  
  before do
    repository.clear

    repository.create(title: 'PoEAA', author: 'Martin Fowler')
    repository.create(title: 'TDD', author: 'Kent Beck')
  end

  it 'should list books' do
    visit '/books'

    within '#books' do
      expect(page).to have_selector('.book', count: 2), 'Expected to find 2 books'
    end
  end
end