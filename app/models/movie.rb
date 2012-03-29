class Movie < ActiveRecord::Base
  def self.all_ratings
    %w(G PG PG-13 NC-17 R)
  end
  def self.directed_by(director)
#TODO
#if director <=> nil
    if director == nil or director.empty?
      return []
    else
      return Movie.find_all_by_director(director)
    end
  end
end
