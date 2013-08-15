metadata :name        => "Update System Agent",
         :description => "Agent to update the system to the latest packages",
         :author      => "Max Hacking <max@mad-hacking.net>",
         :license     => "GPL 3.0",
         :version     => "1.0",
         :url         => "http://www.mad-hacking.net/",
         :timeout     => 3600

requires :mcollective => "2.3.0"

action "update", :description => "Updates the system to the latest packages" do
	display :always
	
	output  :status,
			:description => "The status of the update",
			:display_as	 => "Update Status",
			:default	 => "unknown"
end

action "restart-mcd", :description => "Restarts the MCollective daemon" do
	display :always
	
	output  :status,
			:description => "The status of the restart",
			:display_as	 => "Restart Status",
			:default	 => "unknown"
end

action "restart-system", :description => "Restarts the system (using shutdown -r)" do
	display :always
	
	output  :status,
			:description => "The status of the restart",
			:display_as	 => "Restart Status",
			:default	 => "unknown"
end

action "shutdown-system", :description => "Shuts down the system (using shutdown -h)" do
	display :always
	
	output  :status,
			:description => "The status of the restart",
			:display_as	 => "Restart Status",
			:default	 => "unknown"
end
