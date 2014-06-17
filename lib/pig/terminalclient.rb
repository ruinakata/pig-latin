require_relative "latin.rb"

class TermC

  def self.start
    puts "Hello, I speak pig latin, enter a word to translate (in quotes)"
    wordinput = gets.chomp
    puts PigLatin.otherstuff(wordinput)

  end

end

TermC.start