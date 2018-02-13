# iota.lib.crystal

[![Build Status](https://travis-ci.org/liepaja/iota.lib.crystal.svg?branch=master)](https://travis-ci.org/liepaja/iota.lib.crystal)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![IOTA IRI API Compatibility](https://img.shields.io/badge/IOTA%20IRI%20API%20compatibility-v1.4.0-blue.svg)](https://iota.readme.io/v1.3.0/reference)
[![IOTA IRI API Coverage](https://img.shields.io/badge/IOTA%20IRI%20API%20coverage-1/15%20commands-blue.svg)](https://iota.readme.io/v1.3.0/reference)

## Dependencies


## Installation

Add this to your application's `shard.yml`:

```yaml
dependencies:
  iota.lib.crystal:
    github: liepaja/iota.lib.crystal
```

## Usage

```crystal
require "iota.lib.crystal"
```
### `iota.api`
Create new instance:
```crystal
# Instantiate class with random node
api = Iota::Api.new 
# Instantiate class with custom node
api = Iota::Api.new("http://iotanode.party:14265")
```

#### `getNodeInfo`


```crystal
api.get_node_info
# => {
    "appName" => "IRI", 
    "appVersion" => "1.4.2.1", 
    "jreAvailableProcessors" => 8_i64, 
    "jreFreeMemory" => 3994273904_i64, 
    "jreVersion" => "1.8.0_152", 
    "jreMaxMemory" => 7635730432_i64, 
    "jreTotalMemory" => 7493648384_i64, 
    "latestMilestone" => "E9CFIBOCGAASRBU9BQXVCBVJQULAUNBDVZOPPSGTLMCWEZLBRKJNMIVJQDRPIXLTLMJEXSHWZLAJ99999", 
    "latestMilestoneIndex" => 349621_i64, 
    "latestSolidSubtangleMilestone" => "E9CFIBOCGAASRBU9BQXVCBVJQULAUNBDVZOPPSGTLMCWEZLBRKJNMIVJQDRPIXLTLMJEXSHWZLAJ99999", 
    "latestSolidSubtangleMilestoneIndex" => 349621_i64, 
    "neighbors" => 8_i64, 
    "packetsQueueSize" => 0_i64, 
    "time" => 1518555859627_i64, 
    "tips" => 5205_i64, 
    "transactionsToRequest" => 178_i64, 
    "duration" => 0_i64
}
```

## Contributing

1. Fork it ( https://github.com/liepaja/iota.lib.crystal/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request

## Contributors

- [liepaja](https://github.com/[your-github-name])  - creator, maintainer
