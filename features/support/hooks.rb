# Before hooks will be run before the first step of each scenario.

Before do |scenario|
  # The +scenario+ argument is optional, but if you use it, you can get the title,
  # description, or name (title + description) of the scenario that is about to be
  # executed.
  logout_link = first('Logout')
  click logout_link if logout_link
  $user = nil
end

# After hooks will be run after the last step of each scenario, 
# even when there are failing, undefined, pending or skipped steps.

After do |scenario|
  if(scenario.failed?)
    save_screenshot("screenshots/#{scenario.__id__}.png")
    embed("screenshots/#{scenario.__id__}.png", "image/png", "SCREENSHOT")
  end
end 