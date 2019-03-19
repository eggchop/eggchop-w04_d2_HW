require 'pry'
require 'sinatra'
require 'sinatra/contrib/all'

require_relative('./models/game')
also_reload('./models/*')

get '/:hand_1/:hand_2' do
  game = Game.new(params[:hand_1],params[:hand_2])
  @winner = game.check_winner
  @player = game.check_player
  erb(:result)
end

get '/welcome' do
  erb(:instructions)
end

get '/' do
  redirect('/welcome')
end
