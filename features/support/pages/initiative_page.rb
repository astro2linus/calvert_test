class InitiativePage
	def invest(amount="100",term="5 years")
		#select(term, :from => 'term')
		fill_in :note_principal, with: amount
		click_on "Invest"
	end

	def continue
		click_on "Continue"
	end

	def fill_in_payment_info
		ts = Time.now.to_i.to_s
		fill_in :profile_first_name, with: "Orion"
		fill_in :profile_middle_name, with: "Y"
		fill_in :profile_last_name, with: "Astro"
		fill_in :profile_ssn, with: "555512345"
		fill_in :profile_dob, with: "01/23/1970"
		fill_in :profile_address1, with: "1 ROCKET ROAD"
		fill_in :profile_address2, with: "Address 2"
		fill_in :profile_city, with: "HAWTHORNE"
		select 'California', :from => "profile_state"
		fill_in :profile_zip, with: "90250"
		fill_in :profile_phone, with: "(310) 363-6000"
		fill_in :profile_alt_phone, with: "(310) 363-6000"
		click_on "Save & Continue"
		sleep 15
	end

	def edit_payment_info
		click_on "Edit Payment Info"
		fill_in :bank_account_bank_account_holder, with: "Mike Hunter"
		fill_in :bank_account_bank_account_routing, with: "021000021"
		fill_in :bank_account_bank_account_number, with: "9900000002"
		click_on "Save & Continue"
	end

	def fill_in_bank_account_info
		fill_in :bank_account_bank_account_routing, with: "321174851"
		fill_in :bank_account_bank_account_number, with: "9900000003"
		click_on "Save & Continue"
	end

	def place_order
		check :note_authorization
		click_on "Place Order"
	end
end
