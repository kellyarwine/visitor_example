class House
	attr_accessor :address, :age, :occupancy_status, :electrical_status, :plumbing_status, :hvac_status

	def initialize(address, age, occupancy_status)
		@address = address
		@age = age
		@occupancy_status = occupancy_status
		@electrical_status = ""
		@plumbing_status = ""
		@hvac_status = ""
	end

	def accept(visitor)
		visitor.visit(self)
	end
end