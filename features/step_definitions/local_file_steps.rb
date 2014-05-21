Given(/^I confirm the registration$/) do
	begin
		email_folder = "/Users/Linus/projects/calvert/tmp/letter_opener/"
		most_recent_email_folder = Dir.glob("#{email_folder}*").max_by {|f| File.mtime(f)}
		Capybara.app_host = "file://localhost/#{most_recent_email_folder}/"
		visit 'rich.html'
	  all('a').first.click
	  should have_content "Your email was successfully confirmed."
	rescue 
	ensure
  	Capybara.app_host = "http://localhost:3000"
  end
end
