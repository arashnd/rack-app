require './lib/helpers'
require './models/customer'
require './models/installment'
require_relative 'application'
require 'humanize'

use Rack::Static, :urls => ["/css"], :root => "public"
run Application.new
