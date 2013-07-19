require 'mechanize'

module Entry
  class Scraper
    attr_accessor :entries, :agent
    def initialize
      @entries, @agent = [], Mechanize.new
    end

    attr_accessor :entry_content
    def get_entry(entry_url)
      entry = OpenStruct.new
      find_entry_details entry_url, entry
      entries << entry
    end

    private

    def find_entry_details(entry_url, entry)
      @entry_content = agent.get(entry_url)
      entry.award    = find_award
      entry.year     = 2013
      entry.title    = find_element('title')
      entry.client   = find_element('product')
      entry.agency   = find_element('company')
      entry.category = find_element('media_type')
      entry.raw_text = find_raw_text
    end

    def find_award
      begin; entry_content.search('.heading_prize')[0]
                          .children.text.match(/\w.*/)[0].downcase.gsub(/\r+?/, '')
      rescue NoMethodError
        'entry'
      end
    end

    def find_element(type)
      entry_content.search(".win_#{type}")[0].children.text.downcase
    end

    def find_raw_text
      entry_content.search('table').text
    end
  end
end