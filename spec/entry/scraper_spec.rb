require 'spec_helper'
require_relative '../lib/entry/scraper'

module Entry; end

describe Entry::Scraper do
  let(:scraper)   { Entry::Scraper.new }
  let(:entry_url) { 'http://www.canneslions.com/work/2013/branded/' }

  before do
    entry_content = File.read("#{Dir.pwd}/spec/fixtures/entry.html")
    FakeWeb.register_uri(:get, entry_url, body: entry_content, content_type: 'text/html')
  end

  describe '#get_entry' do
    before { scraper.get_entry(entry_url) }

    it 'adds the entry to entries' do
      scraper.entries[0].award.should eq 'grand prix'
      scraper.entries[0].year.should eq 2013
      scraper.entries[0].title.should eq 'the beauty inside'
      scraper.entries[0].client.should eq 'toshiba laptop with intel inside'
      scraper.entries[0].agency.should eq "pereira & o'dell san francisco, usa"
      scraper.entries[0].category.should eq 'branded entertainment'
    end
  end
end