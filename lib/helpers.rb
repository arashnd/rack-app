require 'erb'

def erb(template, binding)
  path = File.expand_path("views/#{template.to_s}.html.erb")
  erb = ERB.new(File.read(path)).result(binding)
end

def error(response, message, status = 400)
  response.status = status
  response.write("<h2>#{message}</h2>")
end
