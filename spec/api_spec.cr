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
    it "should return information about the node" do
      api = Iota::Api.new("https://nodes.thetangle.org:443")
      api.get_node_info
    end
  end

  describe "#get_neighbors" do
    it "should return a list of neighbors" do
      api = Iota::Api.new("https://nodes.thetangle.org:443")
      api.get_neighbors
    end
  end

  describe "#get_tips" do
    it "should return a list of tips" do
      api = Iota::Api.new("https://nodes.thetangle.org:443")
      api.get_tips
    end
  end

  describe "#find_transactions" do
    it "should return a list of transaction hashes" do
      api = Iota::Api.new("https://nodes.thetangle.org:443")
      api.find_transactions(["TXADKZXWNQOTHLKXURDVSBRDTZGKJ9MAMMBBR9TPBUE9RPZRHGNUDMZWGTCVNYZACJTEEXUOIEHZCMHDD"])
    end
  end

  describe "#get_trytes" do
    it "should return raw transaction data (trytes) of a specific transaction" do
      api = Iota::Api.new("https://turnip.iotasalad.org:14265")
      api.get_trytes(["NSTMWNZ9DBFKZCSZUBEJKKHLHEZNCCYXXRKIWKTYHTNRARZAQHHUUAMKQUORAGSRURYNCKWLLCRT99999"])
    end
  end

  describe "#get_inclusion_states" do
    it "should return raw transaction data (trytes) of a specific transaction" do
      api = Iota::Api.new("https://nodes.thetangle.org:443")
      api.get_inclusion_states(["KWDVYEKG9BABFCLZYV9SJNBTBPBVRGDQLAHU9TFAYRRKPTQVPORZNAFHTHSCHYVYJMZYBZFNZEFIYJGIX"], ["AUJQOMTGADTQOHEFO9PLPXRYUNTSHAESLVMOFTBUSTE9XLRVTKRWQPGWBAACKFAH9KJWNQBLSTIL99999"])
    end
  end

  describe "#get_balance" do
    it "should return raw transaction data (trytes) of a specific transaction" do
      api = Iota::Api.new("https://nodes.thetangle.org:443")
      api.get_balances(["KWDVYEKG9BABFCLZYV9SJNBTBPBVRGDQLAHU9TFAYRRKPTQVPORZNAFHTHSCHYVYJMZYBZFNZEFIYJGIX"])
    end
  end
end

{"neighbors" => [{"address" => "vmd24194.contaboserver.net:14600", "numberOfAllTransactions" => 6916144_i64, "numberOfRandomTransactionRequests" => 709001_i64, "numberOfNewTransactions" => 16394_i64, "numberOfInvalidTransactions" => 1211262_i64, "numberOfSentTransactions" => 9166033_i64, "connectionType" => "udp"}, {"address" => "vmi153665.contaboserver.net:15600", "numberOfAllTransactions" => 0_i64, "numberOfRandomTransactionRequests" => 0_i64, "numberOfNewTransactions" => 0_i64, "numberOfInvalidTransactions" => 0_i64, "numberOfSentTransactions" => 0_i64, "connectionType" => "tcp"}, {"address" => "node01.iota.best:15600", "numberOfAllTransactions" => 0_i64, "numberOfRandomTransactionRequests" => 0_i64, "numberOfNewTransactions" => 0_i64, "numberOfInvalidTransactions" => 0_i64, "numberOfSentTransactions" => 0_i64, "connectionType" => "tcp"}, {"address" => "node03.iota.best:15600", "numberOfAllTransactions" => 0_i64, "numberOfRandomTransactionRequests" => 0_i64, "numberOfNewTransactions" => 0_i64, "numberOfInvalidTransactions" => 0_i64, "numberOfSentTransactions" => 0_i64, "connectionType" => "tcp"}, {"address" => "iota.dhn.network:15600", "numberOfAllTransactions" => 0_i64, "numberOfRandomTransactionRequests" => 0_i64, "numberOfNewTransactions" => 0_i64, "numberOfInvalidTransactions" => 0_i64, "numberOfSentTransactions" => 0_i64, "connectionType" => "tcp"}, {"address" => "sierra.heliota.net:6933", "numberOfAllTransactions" => 2426850_i64, "numberOfRandomTransactionRequests" => 841563_i64, "numberOfNewTransactions" => 201502_i64, "numberOfInvalidTransactions" => 1246_i64, "numberOfSentTransactions" => 7086969_i64, "connectionType" => "tcp"}, {"address" => "raygenwurm-iota.net:15600", "numberOfAllTransactions" => 5058819_i64, "numberOfRandomTransactionRequests" => 242049_i64, "numberOfNewTransactions" => 3014141_i64, "numberOfInvalidTransactions" => 16689_i64, "numberOfSentTransactions" => 5832014_i64, "connectionType" => "tcp"}, {"address" => "iri2.iota.fm:15600", "numberOfAllTransactions" => 0_i64, "numberOfRandomTransactionRequests" => 0_i64, "numberOfNewTransactions" => 0_i64, "numberOfInvalidTransactions" => 0_i64, "numberOfSentTransactions" => 0_i64, "connectionType" => "tcp"}, {"address" => "2.iota.devrandom.be:15600", "numberOfAllTransactions" => 6067071_i64, "numberOfRandomTransactionRequests" => 311153_i64, "numberOfNewTransactions" => 2055890_i64, "numberOfInvalidTransactions" => 625449_i64, "numberOfSentTransactions" => 5948045_i64, "connectionType" => "tcp"}], "duration" => 0_i64}

