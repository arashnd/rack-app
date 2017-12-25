class Application

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
        response.redirect('/eligible')
      else
        @message = "You are not eligible"
        response.redirect('/')
      end

    when request.get? && '/eligible'
      response.write(erb :installment,binding)
    else
      error(response, "Not Found!", 404)
    end

    response.finish
  end
end

class Customer
  attr_reader :nationality, :income, :status, :age
  def initialize(args={})
    @nationality = args["nationality"]
    @income = args["income"].to_i
    @status = args["status"]
    @age = args["age"].to_i
  end
  def eligible?
    if (status == "salaried" && nationality == "pakistani" && (22..60).include?(age) && income >= 50_000) ||
      (status == "business" && nationality == "pakistani" && (22..70).include?(age) && income >= 75_000)
      return true
    end
  end
end
