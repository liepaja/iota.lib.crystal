require "http"
require "json"
require "./helper"
require "./resources"

module Iota
  class Api < Helper

    getter host : String
    property headers = HTTP::Headers{"Content-Type" => "application/json",
                              "X-IOTA-API-Version" => Resources::API_VERSION}

    def initialize(@host = "")
      if @host == ""
        @host = get_random_host
      end
    end

    def get_node_info : JSON::Any
      body = {"command": "getNodeInfo"}
      fetch(body)
    end

    def get_neighbors : JSON::Any
      body = {"command": "getNeighbors"}
      fetch(body)
    end

    def get_tips : JSON::Any
      body = {"command": "getTips"}
      fetch(body)
    end

    def find_transactions(list_of_addresses : Array) : JSON::Any
      body = {"command": "findTransactions", "addresses": list_of_addresses}
      fetch(body)
    end

    def get_trytes(list_of_hashes : Array) : JSON::Any
      body = {"command": "getTrytes", "hashes": list_of_hashes}
      fetch(body)
    end

    def get_inclusion_states(list_of_transactions : Array, list_of_tips : Array) : JSON::Any
      body = {"command": "getInclusionStates", "transactions": list_of_transactions, "tips": list_of_tips}
      fetch(body)
    end

    def get_balances(list_of_addresses : Array, threshold = 100, tips = [] of String) : JSON::Any
      body = {"command": "getBalances", "addresses": list_of_addresses, "threshold": threshold}
      if !(tips).empty?
        body = body.merge({tips: tips})
      end
      fetch(body)
    end

    def get_transactions_to_approve(depth = 27, reference = "") : JSON::Any
      body = {"command": "getTransactionsToApprove", "depth": depth}
      if reference != ""
        body = body.merge({reference: reference})
      end
      fetch(body)
    end

  end
end
