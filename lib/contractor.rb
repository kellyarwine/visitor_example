class Contractor
	def visit(house)
		house.electrical_status += "\nContractor Note:  That electrician is a joker.  I fixed your electrical problem. I'll send the bill addressed to you at this address: #{house.address}"
		house.hvac_status += "\nContractor Note:  That HVAC guy should be fired!  I fixed your HVAC problem. I'll send the bill addressed to you at this address: #{house.address}"
		house.plumbing_status += "\nContractor Note:  That plumber should be taken out back and shot!  I fixed your plumbing problem. I'll send the bill addressed to you at this address: #{house.address}"
	end
end