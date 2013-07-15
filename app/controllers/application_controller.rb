class ApplicationController < ActionController::Base
  protect_from_forgery
  include SessionsHelper
  require 'numbers_in_words'
  require 'numbers_in_words/duck_punch'
end
