class Electrician
	def visit(house)
		house.electrical_status += "I fixed your electrical problem.  I'll send the bill addressed to you at this address: #{house.address}"
	end
end