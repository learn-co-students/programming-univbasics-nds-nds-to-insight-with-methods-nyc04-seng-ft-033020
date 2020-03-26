$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  movies = director_data [:movies]
  i = 0
  total = 0 
  while i < movies.length do
    total += movies[i][:worldwide_gross]
    i += 1 
  end
  total
end


# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }


def directors_totals(nds)
  result = {}
  i = 0
  while i < nds.length do
    gross = gross_for_director(nds[i])
    name = nds[i][:name]
    result[name] = gross
    i += 1
  end
  result
end

