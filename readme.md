# Process

**Note** data comes from: <code>http://www.canneslionsarchive.com/reports/previous_winners.cfm</code>

### Download the pdfs with winners

URL format: <code>http://www.canneslions.com/resources/downloads/winners_pdfs/Cannes_Lions_2012_Branded_Content_Entertainment_Lions_Winners.pdf</code>

<code>
  winner_data = WinnerData.new

  winner_data.get_data
</code>

### Process the text

<code>
  text_processor = TextProcessor.new(winner_data)

  text_processor.extract_details
</code>

### Export details to csv

<code>
  csv_exportor = CsvExporter.new(text_processor)

  csv_exportor.save
</code>