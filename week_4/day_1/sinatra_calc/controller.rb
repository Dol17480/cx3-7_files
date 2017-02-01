require 'sinatra'
require 'sinatra/contrib/all'
require 'pry-byebug'
require_relative './models/calculator'
require 'json'

get '/' do
  erb (:home)
end

get '/about_us' do
  erb (:about_us)
end

get '/all/:num1/:num2' do
   content_type(:json)
   calculator = Calculator.new(params[:num1].to_i, params[:num2].to_i)
   results = {
    add: calculator.add(),
    subtract: calculator.subtract(),
    multiply: calculator.multiply(),
    divide: calculator.divide()
   }
   return results.to_json
 end

get '/add/:num1/:num2' do
  num1 = params[:num1].to_i
  num2 = params[:num2].to_i
  calculator = Calculator.new(num1, num2)
  @calculation = calculator.add()
  erb(:result)
end

get '/subtract/:num1/:num2' do
  num1 = params[:num1].to_i
  num2 = params[:num2].to_i
  calculator = Calculator.new(num1, num2)
 @calculation = calculator.subtract()
 erb(:result)
end

get '/multiply/:num1/:num2' do
  num1 = params[:num1].to_i
  num2 = params[:num2].to_i
  calculator = Calculator.new(num1, num2)
  @calculation = calculator.multiply()
  erb(:result)
end

get '/divide/:num1/:num2' do
  num1 = params[:num1].to_i
  num2 = params[:num2].to_i
  calculator = Calculator.new(num1, num2)
  @calculation = calculator.divide()
  erb(:result)
end
