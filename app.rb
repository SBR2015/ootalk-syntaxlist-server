# app.rb
require 'sinatra'
require 'sinatra/json'
require "sinatra/reloader" if development?
require 'ootalk/syntaxlist'

get '/:language' do
  @asl = Ootalk::Syntaxlist.create(params[:language])
  json @asl
end