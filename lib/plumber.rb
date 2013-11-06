class Plumber
	def visit(house)
		house.plumbing_status += "I fixed your plumbing problem.  I'll send the bill addressed to you at this address: #{house.address}"
	end
end