require 'faker'

# Actor.create(name: "Tom Hanks", born:1956, salery: 45000000, dead: false)


# Movie.create(name: "Forrest Gump", genre: "Drama, Romance", year: 1994, director: "Robert Zemeckis", storyline: "Forrest Gump is a simple man with a low I.Q. but good intentions. He is running through childhood with his best and only friend Jenny. His 'mama' teaches him the ways of life and leaves him to choose his destiny. Forrest joins the army for service in Vietnam, finding new friends called Dan and Bubba, he wins medals, creates a famous shrimp fishing fleet, inspires people to jog, starts a ping-pong craze, creates the smiley, writes bumper stickers and songs, donates to people and meets the president several times. However, this is all irrelevant to Forrest who can only think of his childhood sweetheart Jenny Curran, who has messed up her life. Although in the end all he wants to prove is that anyone can love anyone.")



# Role.create(name: "Forrest Gump", quotes: "Forrest Gump : That day, for no particular reason, I decided to go for a little run. So I ran to the end of the road. And when I got there, I thought maybe I'd run to the end of town. And when I got there, I thought maybe I'd just run across Greenbow County. And I figured, since I run this far, maybe I'd just run across the great state of Alabama. And that's what I did. I ran clear across Alabama. For no particular reason I just kept on going. I ran clear to the ocean. And when I got there, I figured, since I'd gone this far, I might as well turn around, just keep on going. When I got to another ocean, I figured, since I'd gone this far, I might as well just turn back, keep right on going. , id_movie: 1, id_actor:1")



# 5.times do
# Actor.create(
#     name: Faker::Name.name, 
#     age:  Faker::Number.between(18, 80), 
#     salery: Faker::Number.between(1000000, 100000000),
#     dead: Faker::Boolean.boolean
# )
# end

# 1.times do
#     Movie.create(
        
    #    storyline: Faker::Lorem.characters
    #      name: Faker::Book.title ,
    #     year: Faker::Number.between(1991, 2019),
    #     director: Faker::Name.name,
        
#     )
# end

actors = [
    {name:'Samuel L. Jackson', born: 1948, salery: 10000000, dead: false
    },
    {name:'Christoph Waltz', born: 1956, salery: 20000000, dead: false
    },
    {name:'Brad Pitt', born: 1963, salery: 31000000, dead: false
    },
    {name: 'Jamie Foxx', born: 1967, salery: 100000000, dead: false
    },
    {name: 'Uma Thurman', born: 1970, salery: 45000000, dead: false
    },
    {name: 'Will Smith', born: 1968, salery: 100000000, dead: false
    },
    {name: 'Tom Hanks', born: 1956, salery: 35000000, dead: false

    }

]

actors.each do |movie_hash|
    Actor.create(movie_hash)
end
    






# Movie.create(name: Faker::Company.name)
# Role.create(user_id: User.all.sample.id, restaurant_id: Restaurant.all.sample.id, content: Faker::Hacker.say_something_smart)


movies = [ 
    { name: 'Forest Gump', genre: 'Drama, Romance', year: 1994, director: 'Robert Zemeckis', storyline: "Forrest Gump is a simple man with a low I.Q. but good intentions. He is running through childhood with his best and only friend Jenny. His mama teaches him the ways of life and leaves him to choose his destiny. Forrest joins the army for service in Vietnam, finding new friends called Dan and Bubba, he wins medals, creates a famous shrimp fishing fleet, inspires people to jog, starts a ping-pong craze, creates the smiley, writes bumper stickers and songs, donates to people and meets the president several times. However, this is all irrelevant to Forrest who can only think of his childhood sweetheart Jenny Curran, who has messed up her life. Although in the end all he wants to prove is that anyone can love anyone."
    } ,
    { name:'Django Unchained', genre: 'Drama, Western', year: 2012, director: 'Quentin Tarantino', storyline: 'In 1858, a bounty hunter named Schultz seeks out a slave named Django and buys him because he needs him to find some men he is looking for. After finding them, Django wants to find his wife, Broomhilda, who along with him were sold separately by his former owner for trying to escape. Schultz offers to help him if he chooses to stay with him and be his partner. Eventually they learn that she was sold to a plantation in Mississippi. Knowing they cant just go in and say they want her, they come up with a plan so that the owner will welcome them into his home and they can find a way.'
    },
    { name: 'Inglourious Basterds', genre: "Adventure, Drama", year: 2009, director: 'Quentin Tarantino', storyline: 'In German-occupied France, young Jewish refugee Shosanna Dreyfus witnesses the slaughter of her family by Colonel Hans Landa. Narrowly escaping with her life, she plots her revenge several years later when German war hero Fredrick Zoller takes a rapid interest in her and arranges an illustrious movie premiere at the theater she now runs. With the promise of every major Nazi officer in attendance, the event catches the attention of the "Basterds", a group of Jewish-American guerrilla soldiers led by the ruthless Lt. Aldo Raine. As the relentless executioners advance and the conspiring young girls plans are set in motion, their paths will cross for a fateful evening that will shake the very annals of history.'
    },
    {name: 'Pulp Fiction', genre: 'Crime, Drama', year: 1994, director: 'Quentin Tarantino', storyline: 'Jules Winnfield (Samuel L. Jackson) and Vincent Vega (John Travolta) are two hit men who are out to retrieve a suitcase stolen from their employer, mob boss Marsellus Wallace (Ving Rhames). Wallace has also asked Vincent to take his wife Mia (Uma Thurman) out a few days later when Wallace himself will be out of town. Butch Coolidge (Bruce Willis) is an aging boxer who is paid by Wallace to lose his fight. The lives of these seemingly unrelated people are woven together comprising of a series of funny, bizarre and uncalled-for incidents.'
    },
    {name: 'Aladdin', genre: 'Adventure,Comedy,Family', year: 2019, director: 'Guy Ritchie', storyline: 'A kind-hearted street urchin and a power-hungry Grand Vizier vie for a magic lamp that has the power to make their deepest wishes come true.'
    },

]

movies.each do | movie_hash |
    Movie.create(movie_hash)
end

Role.create(role_name:"Jules Winnfield", quotes: "Jules : If my answers frighten you then you should cease asking scary questions.", movie_id: 4, actor_id: 1)
Role.create(role_name:"Django", quotes: "Dr. King Schultz : How do you like the bounty hunting business?
Django : Kill white people and get paid for it? What's not to like?", movie_id: 2, actor_id: 4)
Role.create(role_name:"Forres Gump", quotes: 'Lieutenant Daniel Taylor : Have you found Jesus yet, Gump?
Forrest Gump : I didnt know I was supposed to be looking for him, sir.', movie_id: 1, actor_id: 7)
Role.create(role_name:'Col. Hans Landa', quotes: 'Col. Hans Landa : Mir scheint, da fehlt jemand. Jemand fäschionäbles.', movie_id: 3, actor_id: 2)
Role.create(role_name:'Lt. Aldo Raine', quotes: "Lt. Aldo Raine : You probably heard we ain't in the prisoner-takin' business; we in the killin' Nazi business. And cousin, business is a-boomin'.", movie_id: 3, actor_id: 3)
Role.create(role_name:"Mia Wallace", quotes:'Mia : I do believe Marsellus Wallace, my husband, your boss, told you to take ME out and do WHATEVER I WANTED. Now I wanna dance, I wanna win. I want that trophy, so dance good.', movie_id: 4, actor_id: 5)
Role.create(role_name:"Genie", quotes: "Genie : In ten thousand years, I have never been so embarrassed.", movie_id: 5, actor_id: 6)  
  
# Role.create(:role_name, :quotes, movie_id: Movie.all.sample.id, actor_id: Actor.all.sample.id)








# add_reference :roles, :actor, index: true
#     add_foreign_key :roles, :actors
#     add_reference :roles, :movie, index: true
#     add_foreign_key :roles, :movies