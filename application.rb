class Application

  def call(env)

    request = Rack::Request.new(env)
    response = Rack::Response.new
    response.headers['Content-Type'] = 'text/html'

    case request.path_info
    when '/'
      response.write(erb :index,binding)
    else
      error(response, "Not Found!", 404)
    end

    response.finish
  end

end
