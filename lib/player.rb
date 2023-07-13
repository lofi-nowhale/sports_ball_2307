class Player
  attr_reader :full_name, :monthly_cost, :contract_length, :first_name
  attr_accessor :contract_length
  def initialize(full_name, monthly_cost, contract_length)
    @full_name = full_name
    @monthly_cost = monthly_cost
    @contract_length = contract_length
    @first_name
    @last_name
  end

  def first_name
    array_of_full_name = full_name.split
    first_name = array_of_full_name.first
  end

  def last_name
    array_of_full_name = full_name.split
    first_name = array_of_full_name.last
  end

  def total_cost
    @monthly_cost * @contract_length
  end
  
end