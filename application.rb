class Application

  CARS = { 1 => "Suzuki Mehran VX Euro I", 2 => "Suzuki Mehran VX Euro II", 3 => "Audi A6"}

  def call(env)

    request = Rack::Request.new(env)
    response = Rack::Response.new
    response.headers['Content-Type'] = 'text/html'

    case request.path_info
    when request.get? && '/'
      response.write(erb :index,binding)
    when request.post? && '/check'

      customer = Customer.new(request.params["customer"])

      if customer.eligible?
        response.redirect('/calculate')
      else
        @message = "You are not eligible"
        response.redirect('/')
      end

    when request.get? && '/calculate'
      response.write(erb :installment,binding)
    when request.post? && '/calculate'
      puts request.params["installment"]
      installment = Installment.new(request.params["installment"])
      puts installment.calculate
    else
      error(response, "Not Found!", 404)
    end

    response.finish
  end
end
