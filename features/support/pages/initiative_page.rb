class InitiativePage
	def invest(amount="100",term="5 years")
		#select(term, :from => 'term')
		fill_in :note_principal, with: amount
		click_on "Invest"
	end
end