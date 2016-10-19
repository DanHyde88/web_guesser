require 'sinatra'
require 'sinatra/reloader'




get '/' do
    guess = params["guess"]
    message = check_guess(guess) 
    erb :index, :locals => {:show_random_number => $show_random_number, :message =>message}
end
$random_number = rand(100)
$show_random_number = ""

def check_guess(guess)
    if guess.to_i > $random_number
        return "too high"
    elsif guess.to_i < $random_number
        return "too low"
    else
        $show_random_number = $random_number
        return "you guessed the random number #{$random_number}"
    end
end






       
