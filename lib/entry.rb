module Entry
  DIR = "#{Dir.pwd}/lib/entry/"

  autoload :Finder,  DIR + "finder"
  autoload :Scraper, DIR + "scraper"
end