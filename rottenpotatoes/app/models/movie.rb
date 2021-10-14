class Movie < ActiveRecord::Base
  def self.all_ratings
    %w(G PG PG-13 NC-17 R)
  end
    def self.with_director(movie_title)
       dirname = Movie.find_by_title(movie_title).director
       if dirname == "" || dirname.nil?
           return nil
       end        
       Movie.where(:director => dirname)
    end
end
