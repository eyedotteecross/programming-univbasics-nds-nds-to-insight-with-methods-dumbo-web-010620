$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pry'
require 'pp'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input

def gross_for_director(director_data)
i = 0
total = 0 
  while i < director_data[:movies].size 
  total += director_data[:movies][i][:worldwide_gross] 
  i += 1
  end   
  total 
  #binding.pry
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
i = 0 
totals = {}
  while i < nds.size
  director = nds[i]
  totals[director[:name]] = gross_for_director(director)
  #binding.pry
  i += 1
  end 
totals
end 

