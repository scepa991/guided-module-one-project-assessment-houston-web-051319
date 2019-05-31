require_all 'lib'

class CommandLineInterface
    
    
        def greet
             puts "Please enter your name"
               name = gets.chomp
             puts ('Welcome '  + name + ', to Xmovies, the best application for movie details around the world!')
             sleep(1)
             puts "You can find all movie info, their actors, and their roles. If you'd like, you can also update the movie selection, their actors, and their roles in our database."
             sleep(1)
             puts "Have fun!!!"
        end
end
sleep(1)

    cli = CommandLineInterface.new
    cli.greet

      
      movie_choices = Movie.all.map do | movie |
        { value: movie.id, name: movie.name }
      end
      role_choices = Role.all.map do | role |
        { value: role.id, name: role.role_name}
      end
      actor_choices = Actor.all.map do | actor |
        { value: actor.id, name: actor.name}
        
      end

     



    while true
        menu_choices = [
          "Movies",
          "Roles",
          "Actors",
          "Add Movie",
          "Add Actor",
          "Delete Movie",
          "Delete Actor",
          "Exit"
            ]
         prompt = TTY::Prompt.new
         user_input = prompt.select("Please select:", menu_choices)

    if user_input == "Movies"
         user_input = prompt.select("Please select:", movie_choices)

         user_input = Movie.find(user_input);
         p "name: #{user_input.name}"
         p "genre: #{user_input.genre}"
         p "year: #{user_input.year}"
         p "director: #{user_input.director}"
         p "storyline: #{user_input.storyline}"
      
    elsif user_input == "Roles"
         user_input = prompt.select("Please select:", role_choices)

         user_input = Role.find(user_input);
        #  p "name: #{user_input.actor_role}"
         p "role_name: #{user_input.role_name}"
         p "quotes: #{user_input.quotes}"
    elsif user_input == "Actors"  
        user_input = prompt.select("Please select:", actor_choices) 
        user_input = Actor.find(user_input)
         p "role_name: #{user_input.actor_role}"
         p "name: #{user_input.name}"
         p "born: #{user_input.born}"
         p "salery: #{user_input.salery}" 
         p "dead: #{user_input.dead}"
    elsif user_input == "Exit"
         prompt = TTY::Prompt.new
         prompt.yes?('Are you sure you want to exit?')
         prompt.warn('See you soon!!!') 
      break if user_input == "Exit" 
    
    elsif user_input == "Delete Movie"
        user_input = prompt.select("Please select:", movie_choices)
        user_input = Movie.find(user_input)
        user_input.destroy

    elsif user_input == "Delete Actor"  
        user_input = prompt.select("Please select:", actor_choices) 
        user_input = Actor.find(user_input) 
        user_input.destroy   

         
    elsif user_input == "Add Movie"  
            user_input = prompt.collect do
            key(:name).ask('Movie Name?')
            key(:genre).ask('Genre of movie?')
            key(:year).ask('Year?', convert: :int)
            key(:director).ask('Director name?')
            key(:storyline).ask('Write your storyline')
      
        end
            Movie.create(user_input)
        
    else user_input == "Add Actor"
            user_input = prompt.collect do
            key(:name).ask('Actor Name?') 
            key(:born).ask('What year actor is born?') 
            key(:salery).ask('How much money Actor made in last year?')
            key(:dead).yes?('Is actor alive?')
            

        end
            Actor.create(user_input)    
        end
    end

        
        
        #user_input = Prompt.do(interrupt: :exit)

    

          
    #       Movie.create_movie(name: user_input[:name],
    #                          genre: user_input[:genre],
    #                          year: user_input[:year],
    #                          director: user_input[:director],
    #                          storyline: user_input[:storyline]
    #                         )
    #   end
    
       
      
      

    
   
    
    



        

    
    
    

    
    #  movieWithSelectedMovie = Role.select_movie(movie_choices)
    #  movieWithSelectedMovie.each do | role |
    #     roleObjAr << role.actor
    #  end
    #  roleObjAr.each do | role |
    #     puts role.name
    #  end

     

    # selectedMovieWithUserInput = Movie.select_movie(user_input)
    # selectedMovieWithUserInput.each do | actor |







