
# This is the main entrypoint into the program
# It requires the other files/gems that it needs

require 'pry'
#Commented out to highlight raise
require './candidates'
require './filters'

## Your test code can go here

# binding.pry
# binding.pry
# puts find(5)
# binding.pry
pp qualified_candidates(@candidates)

# puts @candidates

# puts experienced?(@candidates)

# @candidates.each do |candidate|
  
# end  

puts experienced?(@candidates)
  
# end  
# binding.pry
# puts ordered_by_qualification(@candidates)
