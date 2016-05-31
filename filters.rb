require 'pry'

# In this file we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program

def find(id)
  # binding.pry
  raise '@candidates must be an Array' if @candidates.nil?
  candidate.each do |candidate|
    if candidate[:id] == id
      return candidate
    else
      nil
    end    
  end  
end

def experienced?(candidate)
  # unless candidate.has_key?(:years_of_experience)
  #   raise ArgumentError, 'candidate must have a :years_of_experience key'
  # end
  #  candidate[:years_of_experience] >= 2
  #  # [:years_of_experience] >= 2

  unless candidate.has_key?(:years_of_experience)
    raise InvalidCandidateError, 'candidate must have a :years_of_experience key'

    candidate[:years_of_experience] >= 2
  
    begin
      #Here we pass our invalid candidate into the new version of the experienced candidate
      if experienced?(candidate)
        puts "Candidate #{candidate[:id]} is not experiences enough"
      else
        puts "Candidate #{candidate[:id]} is not experiences enough"
      end  
    rescue InvalidCandidateError => ex
        puts "It could not be determined whether the candidate is experienced or not" 
        puts "The reason was: #{ex.message}"   
    
      
    end  
  end  
end

def github_points?(candidate)
  candidate[:github_points] >= 100
end

def two_languages_known?(candidate)
  candidate[:languages].include?("Ruby") ||
  candidate[:languages].include?("Python") 

end

def applied_recent?(candidate)
  candidate[:date_applied] >= 15.days.ago.to_date
end   

def of_age?(candidate)
  candidate[:age] >= 18
end  

def qualified_candidates(candidates)
  
  @qualified_candidates = []
  # binding.pry
  candidates.each do |candidate|
    # binding.pry
    if experienced?(candidate) && github_points?(candidate) && two_languages_known?(candidate) && applied_recent?(candidate) && of_age?(candidate)

      @qualified_candidates << candidate

    end 
    
  end 

  return @qualified_candidates
  
end


# Left on a syntax error can not figure it out.
# def ordered_by_qualification(candidates)
#  binding.pry
#  ordered_candidates = candidates.sort_by do |candidate| [-candidate[:years_of_experience]],-candidate[:github_points]
#  end

#    return ordered_candidates




#   # ordered_by_years = []
#   # binding.pry
#   # candidates.each do |candidate|
#   # years_exp = candidate[:years_of_experience]
#   # ordered_by_years << years_exp

# end  





# More methods will go belows