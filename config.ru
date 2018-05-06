require_relative 'lib/helpers'
require_relative 'models/customer'
require_relative 'models/installment'
require_relative 'application'
require 'humanize'

use Rack::Static, :urls => ["/css"], :root => "public"
run Application.new
