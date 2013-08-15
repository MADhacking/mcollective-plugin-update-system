module MCollective
  module Agent
    class Updatesystem<RPC::Agent
      action "update" do
		reply[:status] = run("/usr/bin/update-system -q")
      end
      action "restart-mcd" do
  		reply[:status] = run("/usr/sbin/restart-mcollectived")
      end
      action "restart-system" do
        reply[:status] = run("/sbin/shutdown -r 30")
      end
	  action "shutdown-system" do
	    reply[:status] = run("/sbin/shutdown -h 30")
      end
    end
  end
end