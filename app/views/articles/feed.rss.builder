#encoding: UTF-8

xml.instruct! :xml, :version => "1.0"
xml.rss :version => "2.0" do
  xml.channel do
    xml.title "Esignature"
    xml.author "Bishisht Bhatta"
    xml.description "Software Development"
    xml.link "http://www.esignature.com.np"
    xml.language "en"

    for article in @articles
      xml.item do
        if article.title
          xml.title article.title
        else
          xml.title ""
        end
        xml.author "Bishisht Bhatta"
        xml.pubDate article.created_at.to_s(:long)
        xml.link "http://localhost:3000/articles/" + article.id.to_s + "-" + article.title
        xml.guid article.id

        text = article.text
        
      end
      xml.description "<p>" + article.text + "</p>"
    end
  end
end