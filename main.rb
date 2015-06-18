#!/usr/bin/env ruby
require 'rubygems'
require 'sinatra'
require 'slim'
require_relative 'inc/pagevars'
require_relative 'inc/api'

set :port, ENV['PORT'] || 8080
set :bind, ENV['IP'] || '0.0.0.0'

get '/' do
  @PageTitle = "Home"
  @TRAVISBUILDNUMBER = Pagevars.setVars("CIbuild")
  slim :home
end
get '/contact' do
  @PageTitle = "Contact"
  @TRAVISBUILDNUMBER = Pagevars.setVars("CIbuild")
  slim :homecontact
end
get '/pricing' do
  @PageTitle = "Pricing"
  @TRAVISBUILDNUMBER = Pagevars.setVars("CIbuild")
  slim :homepricing
end
get '/features' do
  @PageTitle = "Features"
  @TRAVISBUILDNUMBER = Pagevars.setVars("CIbuild")
  slim :homefeatures
end
#Beginning API
get '/api/:cmd1' do
  API.processCMD1(params[:cmd1])
end
get '/api' do
  API.processCMD0()
end
