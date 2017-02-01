require 'sinatra'
require 'sinatra/contrib/all'


get '/hi' do
  "<h1>Hello world!<h1>"

  end

# get '/roll_die' do
#   number = 1..6.rand
#   "<h1>number<h1>"

  get "/roll_die" do
    "Rolling the die ...#{rand(1..6)}"
  end

  get '/name/:title' do
   "Your title is #{params[:title]}"
  end

  get '/name/:first_name/:last_name' do
    puts params
  "Your name is #{params[:first_name]} #{params[:last_name]}"
end

get "/square/:num" do
  num = params[:num].to_i
  "Number squared = #{num * num}"

end