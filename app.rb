require "sinatra"
require "sinatra/reloader"

get("/") do
  "
  <h1>Welcome to your Sinatra App!</h1>
  <p>Define some routes in app.rb</p>
  "
erb(:new_square_calc)
end

get ("/square/new") do
erb(:new_square_calc)
end


get ("/square/results") do

  @num1 = params.fetch("number1").to_f
  @num1result = params.fetch("number1").to_f ** 2

erb(:new_square_results)
  end
