class TextProcessor

  attr_accessor :year, :text, :category, :titles, :clients,
                :products, :agencies, :countries, :awards

  def initialize(pdf_content)
    @year, @text, @category = pdf_content.year, pdf_content.text, pdf_content.category
    @titles, @clients, @products, @agencies, @countries, @awards = [], [], [], [], [], []
  end

  def extract_details
    
  end

  # note finding the 1st entry after Grand Prix:
  # s = text
  # (/Grand Prix\n\n(.+)/.match(s))[0].gsub(/\302\240/, ' ').gsub(/Grand Prix\n\n/, '')
end