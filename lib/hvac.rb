class Hvac
	def visit(house)
		house.hvac_status += "I fixed your HVAC problem.  I'll send the bill addressed to you at this address: #{house.address}"
	end
end