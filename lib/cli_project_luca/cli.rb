require 'pry'

class CLI 
    def call 
        greet_user
        print_menu
    end 

    def greet_user 
        puts <<-'EOF'
         __      __       .__                                                              ._.
        /  \    /  \ ____ |  |   ____  ____   _____   ____        __ __  ______ ___________| |
        \   \/\/   // __ \|  | _/ ___\/  _ \ /     \_/ __ \      |  |  \/  ___// __ \_  __ \ |
         \        /\  ___/|  |_\  \__(  <_> )  Y Y  \  ___/      |  |  /\___ \\  ___/|  | \/\|
          \__/\  /  \___  >____/\___  >____/|__|_|  /\___  > /\  |____//____  >\___  >__|   __
               \/       \/          \/            \/     \/  )/             \/     \/       \/
EOF
    end 

    def print_menu 
        user_choice = nil 
        while user_choice != 'exit'
            puts "This is a small database about the Ghibli universe."
            puts "Please type an option that interest you, or type 'exit' to exit!"
            puts "Type 1 to list characters or type 2 to list imaginary places!"
            user_choice = gets.strip.downcase
            if user_choice.to_i == 1
                show_characters
            elsif user_choice.to_i == 2 
                show_places
            elsif user_choice == 'exit'
                finishing_program
            else 
                puts "Invalid input, please try again or type 'exit' to exit the program!"
            end 
        end 
    end 

    def show_characters
        puts "Here are your characters"
        API.get_characters
        Character.all.each_with_index do |character, index| 
            puts "#{index + 1} #{character.name}" 
        end 
        select_character
    end 

    def show_places 
        puts "Here are all of the locations!"
        API.get_places
        Place.all.each_with_index do |place, index| 
        puts "#{index + 1} #{place.name}" 
        end 
        select_places 
    end 

        #puts API.get_films
        #Film.all.each do |film| 
        #puts film.title 

    def finishing_program 
       puts "Thank you for checking out my gem, I hope you had some fun!"
    end 

    def select_character 
        puts 'Enter the name of the character that you would like to learn more about!'
        character_choice = gets.chomp.split(" ").each{|word| word.capitalize!}.join(" ")
        Character.all.each do |character| 
            if character.name == character_choice
                puts "#{character.name} is a great choice!" 
                puts "He'/She is #{character.age} a years old #{character.gender}."
                puts "He'/She has #{character.eye_color} eyes and wonderful #{character.hair_color} hair!"
                puts "He/She appeared in: #{character.character_movie}"
            end 
        end 
    end 

    def select_places 
        puts "Which place would you like to discover?"
        puts "Type in the name that you are interested in!"
        place_choice = gets.chomp.split(" ").each{|word| word.capitalize!}.join(" ")
        Place.all.each do |place| 
            if place.name == place_choice
                puts "#{place.name} has a #{place.climate} climate with the terrain of a #{place.terrain}." 
            end 
        end 
    end 



end 


