class Movie < ActiveRecord::Base
    def self.with_director(dirname)
       Movie.where(:director => dirname)
    end
end
