class TextProcessor

  attr_accessor :year, :text, :category, :title, :client, :product, :agency, :country
  def initialize(pdf_content)
    @year, @text, @category = pdf_content.year, pdf_content.text, pdf_content.category
    @title, @client, @product, @agency, @country = [], [], [], [], []
  end
end