require "sinatra"
require "sinatra/reloader"
require "active_support/all"

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


  get ("/square_root/new") do
    erb(:new_sqrt_calc)
    end
    
    get ("/square_root/results") do
      @num2 = params.fetch("number2").to_f
      @num2result = params.fetch("number2").to_f ** 0.5
    erb(:new_sqrt_results)
      end





get ("/payment/new") do
        erb(:payment_new)
        end
        
get ("/payment/results") do
          @num3 = params.fetch("num3").to_f
          @num9 = @num3.to_fs(:percentage, {:precision => 4})
          @num6 = @num3/100/12
          @num4 = params.fetch("num4").to_f
          @num11 = @num4.to_i
          @num7 = @num4 *12
          @num5 = params.fetch("num5").to_f
          @num8 = @num5.to_fs(:currency, { :precision => 2 })
          @num5result = (@num6 * @num5) / (1 - (1+@num6)**(-@num7))
          @num10 = @num5result.to_fs(:currency, { :precision => 2 })
        erb(:payment_results)
          end
