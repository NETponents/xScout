#!/usr/bin/env ruby
require 'rubygems'
require 'sinatra'
require 'slim'
require_relative 'inc/builddata'

set :port, ENV['PORT'] || 8080
set :bind, ENV['IP'] || '0.0.0.0'

get '/' do
  @PageTitle = "Home"
  @TRAVISBUILDNUMBER = getCIstring()
  slim :home
end
get '/pricing' do
  @PageTitle = "Pricing"
  @TRAVISBUILDNUMBER = getCIstring()
  slim :homepricing
end
