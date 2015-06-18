#!/usr/bin/env ruby
require 'rubygems'
require 'sinatra'
require 'slim'
require_relative 'inc/pagevars'
#include 'Pagevars'

set :port, ENV['PORT'] || 8080
set :bind, ENV['IP'] || '0.0.0.0'

get '/' do
  @PageTitle = "Home"
  @TRAVISBUILDNUMBER = Pagevars.setVars("CIbuild")
  slim :home
end
get '/contact'
  @PageTitle = "Contact"
  @TRAVISBUILDNUMBER = Pagevars.setVars("CIbuild")
  slim :contact
get '/pricing' do
  @PageTitle = "Pricing"
  @TRAVISBUILDNUMBER = Pagevars.setVars("CIbuild")
  slim :homepricing
end
