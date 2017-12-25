require 'erb'

def erb(template, binding)

  path = File.expand_path("views/#{template.to_s}.html.erb")
  @view = ERB.new(File.read(path)).result(binding)

  layout_file = File.expand_path("views/layout.html.erb")
  erb = ERB.new(File.read(layout_file)).result(binding)



end

def error(response, message, status = 400)
  response.status = status
  response.write("<h2>#{message}</h2>")
end
