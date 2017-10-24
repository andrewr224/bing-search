require_relative '../lib/search'

RSpec.describe 'Search' do
  subject(:search) { Bing.search(query) }
  let(:query) { 'Ruby Programming' }

  it 'does the search and returns a positive result' do
    expect(search.code).to eq(200)
  end
end
