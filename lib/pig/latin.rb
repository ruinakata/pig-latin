require "pig/latin/version"

module PigLatin
   
  def self.checkinput (input)
    if input.include?(" ")
      return false
    else 
      return true
    end
  end

   def self.otherstuff (input)
      inputarr = input.split("")
      #if input = "colgate", inputarr = ["c", "o", "l", "g", "a", "t", "e"]
      if (/\A[aeiou]/i.match(input) != nil) 
        inputarr << "w"
        inputarr << "a"
        inputarr << "y"
        return inputarr.join
      elsif inputarr[1..-2].include?("y")
        firstcons = /[^y]+/.match(input).to_s.split("") #=> ["r", "h"]
        l = firstcons.length #=> 2
        takeout = inputarr[l..-1]
          while (l > 0)
            takeout << firstcons[0]
            firstcons.delete_at(0)
            l -= 1
          end
        addon = takeout << firstcons
        addon <<"a"
        addon << "y"
        return addon.join
      else
        #check to see if first letter is consonant
        #ex "clock"
        firstcons = /[^aeiou]+/.match(input).to_s.split("")  #=> ["c","l"]
        l = firstcons.length #=> 2
        takeout = inputarr[l..-1] #=> ["o", "c", "k"]
          while (l > 0)
            takeout << firstcons[0]
            firstcons.delete_at(0)
            l -= 1
          end
        addon = takeout << firstcons
        addon << "a"
        addon << "y"
        return addon.join # => "ockclay"
      end
    end

end

