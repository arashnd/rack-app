class Customer
  attr_reader :nationality, :income, :status, :age

  def initialize(args={})
    @nationality = args["nationality"]
    @income = args["income"].to_i
    @status = args["status"]
    @age = args["age"].to_i
  end

  def eligible?
    if (status == "salaried" && nationality == "pakistani" && (age).between?(22,60) && income >= 50_000) ||
      (status == "business" && nationality == "pakistani" && (age).between?(22,70) && income >= 75_000)
      return true
    end
  end
end
