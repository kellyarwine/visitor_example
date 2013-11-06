require 'contractor'
require 'electrician'
require 'house'
require 'hvac'
require 'plumber'

class Main
  def main
    houses = []
    houses << House.new("100 Main", 27, :rented)
    houses << House.new("200 North Chicago", 12, :vacant)
    houses << House.new("1 Old Stone Court", 5, :rented)
    houses << House.new("15 Nottingham", 114, :uninhabitable)

    houses.each do |house|
      house.accept(Electrician.new)
      house.accept(Plumber.new)
      house.accept(Hvac.new)
      house.accept(Contractor.new)
    end

    houses.each do |house|
      puts "----------------------------------------------\n"
      puts house.address + "\n"
      puts house.age.to_s + " years old\n"
      puts "This property is currently " + house.occupancy_status.to_s + ".\n"
      puts "----------------------------------------------\n"
      puts "The electrician noted:\n"
      puts house.electrical_status.to_s
      puts "The HVAC guy noted:\n"
      puts house.hvac_status.to_s
      puts "The plumber noted:\n"
      puts house.plumbing_status.to_s
    end
  end
end