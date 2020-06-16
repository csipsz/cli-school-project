#adding gems here so all of my files listed under have access to them
require 'pry'
require 'json'
require 'rest-client'

require_relative './cli_project_luca/version'
require_relative './cli_project_luca/cli'
require_relative './cli_project_luca/api'
require_relative './cli_project_luca/character'
require_relative './cli_project_luca/place'
require_relative './cli_project_luca/film'

module CliProjectLuca
  class Error < StandardError; end
  # Your code goes here...
end


