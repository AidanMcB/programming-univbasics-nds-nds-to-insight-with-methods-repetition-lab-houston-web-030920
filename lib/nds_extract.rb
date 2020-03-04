$LOAD_PATH.unshift(File.dirname(__FILE__))
require_relative './directors_database'

def directors_totals(source)
total = {}
d_i = 0 
  while d_i < source.length do 
    name = source[d_i][:name] 
    total[name] = gross_for_director(source[d_i]) 
    d_i += 1
  end
  total
end

def gross_for_director(d)
total = 0 
movie_index = 0 
  while movie_index < d[:movies].length do 
    total += d[:movies][movie_index][:worldwide_gross]
    movie_index += 1 
  end 
  total 
end

def list_of_directors(source)
  # Write this implementation
 directors = [] 
  director_index = 0 
    while director_index < source.length do 
      directors << source[director_index][:name]
      director_index += 1 
    end 
    directors 
end

def total_gross(source)
  # Write this implementation
  #
  # Should use methods:
  # 1. directors_totals: returns a Hash of { dir_name => gross }
  # 2. list_of_directors: names provides an Array of directors names (use
  #
  # Visit each key (i.e. director name), look up the value in the hash
  # returned by directors_totals, and add it to a running total. When done,
  # return the total
  totals = directors_totals(source) 
  answer = 0 
  d_i = 0 
    while d_i < totals.length do 
      answer += totals[d_i]
      d_i += 1 
    end 
    answer
end


