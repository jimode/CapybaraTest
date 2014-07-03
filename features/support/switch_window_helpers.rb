module SwitchWindowHelpers
	def switch_window
		main_window = page.driver.browser.window_handle
  		windows = page.driver.browser.window_handles
  		windows.each do |window|
		  	if main_window != window
		  		new_window = window
		  	end
  		end
	end
end

World(SwitchWindowHelpers)

# World do
# 	CustomWorld.new
# end