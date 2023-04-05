require 'bundler/setup'
Bundler.require(:default, :development)
require "base64"
require "json"

require_all 'lib'

# Dir["../lib/*.rb"].each{ |class_file| require class_file }

# require_relative '../lib/user'
# require_relative '../lib/member'
# require_relative '../lib/account'
# require_relative '../lib/staff'