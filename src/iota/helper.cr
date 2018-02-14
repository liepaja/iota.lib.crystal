require "./resources"

module Iota
  class Helper

    protected def fetch(body, host = @host, headers = headers)
      body = named_tuple_to_string(body)
      puts body
      api_resp = HTTP::Client.post(host, headers, body)
      JSON.parse(api_resp.body)
    end

    protected def get_random_host
      public_hosts = get_public_hosts
      size_of_public_nodes = public_hosts.size - 1
      random_index = Random.rand(size_of_public_nodes)
      public_hosts[random_index]
    end

    private def get_public_hosts
      if typeof(Resources::HOSTS) != Array(String)
        raise ArgumentError.new "Hosts file doesn't exist!"
      end
      Resources::HOSTS
    end

    protected def embrace(string_to_embrace : String) : String
      brace = "\""
      brace + string_to_embrace + brace
    end

    protected def named_tuple_to_string(named_tuple : NamedTuple) : String
      string_of_named_tuple = "{"
      brace = "\""
      semi_colon = ": "
      comma = ", "
      types = named_tuple.class.types

      named_tuple.each do |index|
        embraced_index = embrace(index.to_s)
        embraced_index_with_semi_colon = embraced_index + semi_colon

        embraced_value = named_tuple[index].to_s

        if types[index] == String
          embraced_value = embrace(named_tuple[index].to_s)
        end

        string_of_named_tuple = string_of_named_tuple + embraced_index_with_semi_colon + embraced_value + comma
        # "index": "value"
      end
      string_of_named_tuple = string_of_named_tuple.rchop.rchop
      string_of_named_tuple + "}"
    end
  end
end
