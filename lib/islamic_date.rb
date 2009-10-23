require 'open-uri'
require 'hpricot'
module IslamicDate  
  def open_file
    open(ISLAMIC_DATE_FILE) do |f|
      doc = Hpricot(f)
    end
  end
  
  def islamic_date
    doc = open_file
    element = (doc/"html/body/table/tr/td.IslamicDataSmall/a/")
  end
end