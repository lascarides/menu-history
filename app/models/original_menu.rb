class OriginalMenu < ActiveRecord::Base

  def date_guess
    
    # Start with original date, normalize and remove extraneous non-date info
    date_to_parse = self.orig_date.strip
    date_to_parse.gsub!(/[oO]/, "0")
    date_to_parse.gsub!("/", "-")
    date_to_parse.gsub!(/ .*$/, "")
    date_to_parse.gsub!(/[^\/\-0-9]/, "")

    # Look at call number for date clues
    call_number = self.call_number.strip
    call_number.gsub!(/[^0-9]/, " ")
    call_number.gsub!(/ +/, " ")
    call_number.strip!
    call_number.gsub!(/^(\d\d\d\d).*$/, '\1')
    call_number_year = (call_number =~ /^\d\d\d\d$/) ? call_number.to_i : nil

    if date_to_parse =~ /\d\d\d\d-\d+-\d+/
      # 4-digit years are good to go
      year, month, day = date_to_parse.split("-").collect{ |i| i.to_i > 0 ? i.to_i : 1 }
    elsif date_to_parse =~ /\d+-\d+-\d\d\d\d/
      # 4-digit years are good to go
      month, day, year = date_to_parse.split("-").collect{ |i| i.to_i > 0 ? i.to_i : 1 }
    elsif date_to_parse =~ /\d+-\d+-\d\d/
      month, day, year = date_to_parse.split("-").collect{ |i| i.to_i > 0 ? i.to_i : 1 }
      if not call_number_year.nil? and call_number_year % 100 == year
        # If 2-digit date, check the call number for supporting clues
        year = call_number_year
      else
        # If call number doesn't contain year, default to 1800's for >50, 1900's for <50
        # FIXME : bad assumption to make (1959 would incorrectly become 1859)
        year = (year > 50) ? year + 1800 : year + 1900
      end
    end
    
    begin 
      Date.civil(year, month, day)
    rescue
      # FIXME HACK HACK HACK
    end
    

  end

end
