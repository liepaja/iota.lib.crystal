require "./spec_helper"

describe Iota::Api do
  describe "initialization" do
    it "#initialize w/o parameters" do
      api = Iota::Api.new
    end

    it "#initialize w/o parameters" do
        api = Iota::Api.new("https://alpha.tangle-nodes.com:443")
        api.host.should eq "https://alpha.tangle-nodes.com:443"
    end
  end

  describe "#get_node_info" do
    it "#initialize w/o parameters" do
      api = Iota::Api.new
      api.get_node_info
    end
  end

end
