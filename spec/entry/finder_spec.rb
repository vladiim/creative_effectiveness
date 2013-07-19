require 'spec_helper'
require_relative '../../lib/entry/finder'

module Entry; end

describe Entry::Finder do
  let(:finder)      { Entry::Finder.new }

  describe "#all_urls" do
    let(:result)      { finder.all_urls }

    before do
      mock(finder).categories { ['design'] }
      mock_entries_content
      mock_last_entries_content
    end

    it 'lists all the urls' do
      result.should eq ['URL_PAGE_1', 'URL_PAGE_2']
    end    
  end
end

def mock_entries_content
  entries_content = File.read("#{Dir.pwd}/spec/fixtures/entries.html")

  entries_url     ='http://www.canneslions.com/work/2013/design//index.cfm?award=101'
  FakeWeb.register_uri(:get, entries_url, body: entries_content, content_type: 'text/html')

  first_url       = 'http://www.canneslions.com/work/2013/design/index.cfm?award=101&direction=1&order=0&page=1'
  FakeWeb.register_uri(:get, first_url, body: entries_content, content_type: 'text/html')
end

def mock_last_entries_content
  last_url     = 'http://www.canneslions.com/work/2013/design/index.cfm?award=101&direction=1&order=0&page=2'
  last_entries = File.read("#{Dir.pwd}/spec/fixtures/last_entries.html")
  FakeWeb.register_uri(:get, last_url, body: last_entries, content_type: 'text/html')
end