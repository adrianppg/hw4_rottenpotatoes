class Movie < ActiveRecord::Base
  def self.all_ratings
    %w(G PG PG-13 NC-17 R)
  end
  def self.find_with_same_director director
    if director <=> nil
      return []
    else
      Movie.find_all_by_director(director)
    end
  end
end
