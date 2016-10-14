require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @reversed = params[:name].reverse
    "#{@reversed}"
  end

  get '/square/:number' do
    @square = params[:number].to_i*params[:number].to_i
    " The square is #{@square}!"
  end

  get '/say/:number/:phrase' do
    @string = ''
    params[:number].to_i.times do
      @string += "\n#{params[:phrase]}"
    end
    @string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    @result = params[:number1].method(params[:operation]).(params[:number2])
    "Your result is #{@result}"
  end
end
