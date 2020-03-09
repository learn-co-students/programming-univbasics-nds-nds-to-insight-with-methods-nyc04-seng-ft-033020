$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'


def gross_for_director(director_data)
  movies = director_data[:movies]
  i = 0
  gross = 0
  while i < movies.length do
    gross += movies[i][:worldwide_gross]
    i += 1
  end
  gross
end


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
