require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    (params[:number].to_i ** 2).to_s
  end

  get '/say/:number/:phrase' do
    # accepts a number and a phrase and returns that phrase in a single string 
    # the number of times given
    phrase = []
    (params[:number].to_i).times {phrase << params[:phrase]}
    phrase.join
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    # accepts an operation (add, subtract, multiply or divide) and performs 
    # the operation on the two numbers provided, returning a string
    case params[:operation]

    when 'add'
      "#{params[:number1].to_i + params[:number2].to_i}"

    when 'subtract'
      "#{params[:number1].to_i - params[:number2].to_i}"

    when 'multiply'
      "#{params[:number1].to_i * params[:number2].to_i}"

    when 'divide'
      "#{params[:number1].to_i / params[:number2].to_i}"
    end

  end

end