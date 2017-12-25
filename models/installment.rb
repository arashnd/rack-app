class Installment
  attr_reader :cost, :period, :markup, :downpayment

  def initialize(args={} )
    @cost = args["cost"].to_i
    @period = args["period"].to_i
    @markup = args["markup"].to_i
    @downpayment = args["downpayment"].to_i
  end

  def calculate
    price_after_downpayment = cost - downpayment
    n_year_installment = price_after_downpayment / (period * 12)
    mark_per_anum = (price_after_downpayment * (markup / 100)) / markup
    payement_per_month = n_year_installment + mark_per_anum
  end
end
