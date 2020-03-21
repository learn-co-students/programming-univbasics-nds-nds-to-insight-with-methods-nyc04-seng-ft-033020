$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
   gross = 0
  for item in director_data[:movies]
    gross += item[:worldwide_gross]
  end
  gross
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  hash = {}
  total = 0
  for dir in nds
    hash[dir[:name]] = gross_for_director(dir)
  end

  hash
end


