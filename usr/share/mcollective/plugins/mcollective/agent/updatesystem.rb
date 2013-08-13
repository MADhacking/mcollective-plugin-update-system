module MCollective
  module Agent
    class Updatesystem<RPC::Agent
      action "update" do
		reply[:status] = run("update-system -q")
      end
    end
  end
end