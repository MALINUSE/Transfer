module ApplicationHelper
  def login_options
    @redirect_path ? {redirect_to: @redirect_path} : {}
  end

  def money(money, unit = '', precision = 0)
    number_to_currency(money, precision: precision, unit: "#{unit}", format: "%n %u", separator: ",", delimiter: " ")
  end
end
