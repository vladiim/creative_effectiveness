require 'mechanize'

module Entry
  class Finder
    URL = "http://www.canneslions.com"
    ENTRIES_INDEX_SUFFIX = "//index.cfm?award=101"

    attr_accessor :agent, :urls, :year
    def initialize
      @agent, @urls = Mechanize.new, []

      @year = 2013
    end

    attr_accessor :page
    def all_urls
      categories.inject(urls) do |urls, category|
        @page = entries_page(category)
        scrape_category_urls
        urls
      end
    end

    private

    def entries_page(category)
      agent.get(URL + "/work/#{year}/#{category}" + ENTRIES_INDEX_SUFFIX)
    end

    def scrape_category_urls
      category_page_count.times do |page_n|
        @page = agent.get(URL + "/work/#{year}/design/index.cfm?award=101&direction=1&order=0&page=#{page_n + 1}")
        scrape_page_urls
      end
    end

    def scrape_page_urls
      page.search('tbody').search('tr').each do |tr|
        begin; urls << find_url(tr)
        rescue NoMethodError
        end
      end
    end

    def category_page_count
      page.search('.entry_list_paging')[0].search('a').inject(1) do |largest, link|
        largest = [largest, link.children.text.to_i].max
      end
    end

    # def scrape_next_page
    #   click_next_page
    #   scrape_category_urls
    # end

    def find_url(tr)
      tr.search('a')[0].attributes['href'].value
    end

    # def more_entries
    #   ">>>" == next_entries_page_link.children.text
    # end

    # def click_next_page
    #   Mechanize::Page::Link.new(next_entries_page_link, agent, page).click
    # end

    # def next_entries_page_link
    #   page.search('.entry_list_paging').last.children[-2]
    # end

    # def categories
    #   CATEGORIES
    # end
  end
end