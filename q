
[1mFrom:[0m /home/csipsz/cli_project_luca/lib/cli_project_luca/cli.rb:89 CLI#look_up_summary:

     [1;34m86[0m: [32mdef[0m [1;34mlook_up_summary[0m
     [1;34m87[0m:     puts [31m[1;31m"[0m[31mWould you like to see the summary of that movie?[1;31m"[0m[31m[0m
     [1;34m88[0m:     puts [31m[1;31m"[0m[31mType yes or no![1;31m"[0m[31m[0m
 =>  [1;34m89[0m:     binding.pry
     [1;34m90[0m:     movie_interest = gets.chomp.downcase!
     [1;34m91[0m:     [32mif[0m movie_interest == [31m[1;31m'[0m[31myes[1;31m'[0m[31m[0m
     [1;34m92[0m:         binding.pry
     [1;34m93[0m:         [1;34;4mFilm[0m.all.each [32mdo[0m |movie| 
     [1;34m94[0m:             
     [1;34m95[0m:             [32mif[0m movie.title == character.character.movie 
     [1;34m96[0m:                 puts movie.description 
     [1;34m97[0m:             [32mend[0m 
     [1;34m98[0m:         [32mend[0m 
     [1;34m99[0m:     [32melse[0m 
    [1;34m100[0m:         puts [31m[1;31m"[0m[31mwhatever[1;31m"[0m[31m[0m
    [1;34m101[0m:     [32mend[0m 
    [1;34m102[0m: [32mend[0m 

