require './lib/helpers'
require './models/customer'
require './models/installment'
require_relative 'application'
require 'humanize'

run Application.new
