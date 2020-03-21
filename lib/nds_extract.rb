$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  gross = 0
  movie_i = 0
  d_movie = director_data[:movies]

  while movie_i < d_movie.length do 
    gross += d_movie[movie_i][:worldwide_gross]
    movie_i += 1
  end
  gross
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  d_gross = {}
  d_index = 0

  while d_index < nds.length do
   director_info = nds[d_index]
   d_gross[director_info[:name]] = gross_for_director(director_info)
   d_index += 1
  end
  d_gross
end

