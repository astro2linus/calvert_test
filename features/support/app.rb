def home_page
	@home_page ||= HomePage.new
end

def user
	$user ||= TestUser.new
end

def take_screenshot(name="screenshot")
	#path = File.expand_path("../../screenshots/#{name.downcase}.png", __FILE__)
	#{}%x[touch(path)]
	sleep 0.2
	save_screenshot("screenshots/#{name.downcase}.png")
	sleep 1
	embed("screenshots/#{name.downcase}.png", "image/png", "SCREENSHOT")
	#save_screenshot(path)
end