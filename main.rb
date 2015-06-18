#!/usr/bin/env ruby
require 'rubygems'
require 'sinatra'
require 'slim'
require_relative 'inc/pagevars'
include 'pagevars'

set :port, ENV['PORT'] || 8080
set :bind, ENV['IP'] || '0.0.0.0'

get '/' do
  pagevars::setVars("Home")
  slim :home
end
get '/pricing' do
  pagevars::setVars("Pricing")
  slim :homepricing
end
