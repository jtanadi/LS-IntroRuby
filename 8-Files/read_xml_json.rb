require "json"
require "nokogiri"
require "axlsx"
require "csv"

def get_slashdot_articles(xml_file)
  slashdot_articles = []
  File.open(xml_file, "r") do |file|
    doc = Nokogiri::XML(file)

    slashdot_articles = doc.css("item").map do |item|
      {
        title: item.at_css("title").content,
        link: item.at_css("link").content,
        summary: item.at_css("description").content
      }
    end
  end

  slashdot_articles
end

def get_feedzilla_articles(json_file)
  feedzilla_articles = []
  File.open(json_file, "r") do |file|
    items = JSON.parse(file.read.force_encoding("UTF-8"))
    feedzilla_articles = items["articles"].map do |article|
      {
        title: article["title"],
        link: article["url"],
        summary: article["summary"]
      }
    end
  end

  feedzilla_articles
end

def write_csv(csv_file, input_array)
  CSV.open(csv_file, "wb") do |csv|
    input_array.each { |a| csv << [a[:title], a[:link], a[:summary]] }
  end
end

def write_xlsx(xlsx_file, input_array)
  pkg = Axlsx::Package.new
  pkg.workbook.add_worksheet(name: "Articles") do |sheet|
    input_array.each do |a|
      sheet.add_row [a[:title], a[:link], a[:summary]]
    end
  end

  pkg.serialize(xlsx_file)
end

slashdot_articles = get_slashdot_articles("zFiles/slashdot.xml")
feedzilla_articles = get_feedzilla_articles("zFiles/feedzilla.json")

sorted_articles =
  (feedzilla_articles + slashdot_articles).sort_by { |a| a[:title] }

write_csv("zFiles/articles.csv", sorted_articles)
write_xlsx("zFiles/articles.xlsx", sorted_articles)
