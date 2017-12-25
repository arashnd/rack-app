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
