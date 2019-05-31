require_all 'lib'

class Movie < ActiveRecord::Base
    has_many :roles
    has_many :actors, through: :roles

   
    def movie_actor
        something = Movie.all.select do |movie|
              movie.actors == self
          end 
    #       something.map do | movie |
    #           movie.movie_name
    #   end
      end


    # def self.create_movie(name, genre, year, director, storyline)
    #     movie = Movie.create(name, genre, year, director, storyline)
    # end

    
    

    


end