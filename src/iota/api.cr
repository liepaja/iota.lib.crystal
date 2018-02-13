require "http"
require "json"
require "./resources"

module Iota
  class Api

    getter host : String

    def initialize(@host = "")
      if @host == ""
        @host = get_random_host
      end
    end

    private def get_public_hosts
      if typeof(Resources::HOSTS) != Array(String)
        raise ArgumentError.new "Hosts file doesn't exist!"
      end
      Resources::HOSTS
    end

    def get_node_info : JSON::Any
      headers = HTTP::Headers{"Content-Type" => "application/json",
                              "X-IOTA-API-Version" => "1"}
      body = "{\"command\": \"getNodeInfo\"}"
      api_resp = HTTP::Client.post(@host, headers, body)
      JSON.parse(api_resp.body)
    end

    private def get_random_host
      public_hosts = get_public_hosts
      size_of_public_nodes = public_hosts.size - 1
      random_index = Random.rand(size_of_public_nodes)
      public_hosts[random_index]
    end

  end

end
