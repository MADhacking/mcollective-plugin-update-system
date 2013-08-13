module MCollective
  module Agent
    class UpdateSystem<RPC::Agent
      action "update" do
		reply[:status] = run("update-system -q")
      end
    end
  end
end