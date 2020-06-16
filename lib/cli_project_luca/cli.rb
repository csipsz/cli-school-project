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
            puts "Please type an option that interest you, or type 'exit' to exit!"
            puts "Type 1 to list characters or type 2 to list movies!"
            user_choice = gets.strip.downcase
            if user_choice.to_i == 1
                show_characters
            elsif user_choice.to_i == 2 
                show_movies
            elsif user_choice == 'exit'
                finishing_program
            else 
                puts "Invalid input, please try again or type 'exit' to exit the program!"
            end 
        end 
    end 

    def show_characters
        puts "Here are your characters"
        Character.all
    end 

    def show_movies 
        puts "Here are your movies"
    end 

    def finishing_program 
       puts "Thank you for checking out my gem, I hope you had some fun!"
    end 



end 



