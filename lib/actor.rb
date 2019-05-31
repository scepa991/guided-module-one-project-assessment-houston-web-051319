class Actor < ActiveRecord::Base
    has_many :roles
    has_many :movies, through: :roles

    def actor_role
      roles = Role.all.select do |role|
            role.actor == self
        end 
        roles.map do | role |
            role.role_name
    end
    end
   



    def self.select_movie(movie)
        Role.all.select do |roleObject|
            roleObject.movie == movie
        end
    end
end