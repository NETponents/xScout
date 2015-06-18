#!/usr/bin/env ruby
require 'rubygems'
require 'sinatra'
require 'slim'
require_relative 'inc/pagevars'
#include 'Pagevars'

set :port, ENV['PORT'] || 8080
set :bind, ENV['IP'] || '0.0.0.0'

get '/' do
  Pagevars.setVars("Home")
  slim :home
end
get '/pricing' do
  Pagevars.setVars("Pricing")
  slim :homepricing
end
