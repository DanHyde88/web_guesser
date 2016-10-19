require 'sinatra'
require 'sinatra/reloader'

random_number = rand(100)

get '/' do    
    %{<h1>The secret number is #{random_number}</h1>
    <p>But what about the rest of history?</p>
    <ul><li>one</li><li>two</li><li>three</li></ul>}
end