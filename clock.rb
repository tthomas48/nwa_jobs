require 'open-uri'

loop {
    begin 
      open("http://www.newworkaustin.com/companies/updateFeedItems")
    rescue
      @error_message="#{$!}"
      puts @error_message
    end
    begin 
      open("http://workbook.newworkaustin.com/cron.php")
    rescue
      @error_message="#{$!}"
      puts @error_message
    end
    puts Time.new.inspect + " - Finished loop"
    sleep 60 * 60
}
