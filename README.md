# iota.lib.crystal

[![Build Status](https://travis-ci.org/liepaja/iota.lib.crystal.svg?branch=master)](https://travis-ci.org/liepaja/iota.lib.crystal)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![IOTA IRI API Compatibility](https://img.shields.io/badge/IOTA%20IRI%20API%20compatibility-v1.4.0-blue.svg)](https://iota.readme.io/v1.3.0/reference)
[![IOTA IRI API Coverage](https://img.shields.io/badge/IOTA%20IRI%20API%20coverage-7/15%20commands-blue.svg)](https://iota.readme.io/v1.3.0/reference)

## Dependencies


## Installation

Add this to your application's `shard.yml`:

```yaml
dependencies:
  iota:
    github: liepaja/iota.lib.crystal
```

## Usage

```crystal
require "iota"
```
### `Iota::Api`
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
#  "appName" => "IRI", 
#  "appVersion" => "1.4.2.1", 
#  "jreAvailableProcessors" => 8_i64, 
#  "jreFreeMemory" => 3994273904_i64, 
#  "jreVersion" => "1.8.0_152", 
#  "jreMaxMemory" => 7635730432_i64, 
#  "jreTotalMemory" => 7493648384_i64, 
#  "latestMilestone" => "E9CFIBOCGAASRBU9BQXVCBVJQULAUNBDVZOPPSGTLMCWEZLBRKJNMIVJQDRPIXLTLMJEXSHWZLAJ99999", 
#  "latestMilestoneIndex" => 349621_i64, 
#  "latestSolidSubtangleMilestone" => "E9CFIBOCGAASRBU9BQXVCBVJQULAUNBDVZOPPSGTLMCWEZLBRKJNMIVJQDRPIXLTLMJEXSHWZLAJ99999", 
#  "latestSolidSubtangleMilestoneIndex" => 349621_i64, 
#  "neighbors" => 8_i64, 
#  "packetsQueueSize" => 0_i64, 
#  "time" => 1518555859627_i64, 
#  "tips" => 5205_i64, 
#  "transactionsToRequest" => 178_i64, 
#  "duration" => 0_i64
# }
```

#### `getNeighbors`


```crystal
api.get_neighbors
# => {
#  "neighbors" => [
#    {
#      "address" => "vmd24194.contaboserver.net:14600", 
#      "numberOfAllTransactions" => 6916144_i64, 
#      "numberOfRandomTransactionRequests" => 709001_i64, 
#      "numberOfNewTransactions" => 16394_i64, 
#      "numberOfInvalidTransactions" => 1211262_i64, 
#      "numberOfSentTransactions" => 9166033_i64, 
#      "connectionType" => "udp"
#    }, 
#    {
#      "address" => "vmi153665.contaboserver.net:15600", 
#      "numberOfAllTransactions" => 0_i64, 
#      "numberOfRandomTransactionRequests" => 0_i64, 
#      "numberOfNewTransactions" => 0_i64, 
#      "numberOfInvalidTransactions" => 0_i64, 
#      "numberOfSentTransactions" => 0_i64, 
#      "connectionType" => "tcp"
#    }
#  ], 
#  "duration" => 0_i64
# }
```

#### `getTips`


```crystal
api.get_tips
# => {
#  "hashes" => [
#    "ADSW9CZCGINRZWBQQFERIPIMBCJAEIAVLMBDWVNWMTAWIHOEFEPX9EISDWEHHPGGNDINZAUCUERT99999", 
#    "BNYMZDXHFNHVEY9RTGOCNJEY9OQWESU9TXFSPKKQAIERNVCPEMTRSMFXFJZBDCQ9HPIHOBQJPZS999999" 
#  ], 
#  "duration" => 7_i64
# }
```

#### `findTransactions`


```crystal
api.find_transactions
# => {
#  "hashes" => [
#    "CNDQYQDQKEVPC9MHSXEWJAPCSOQDFMXDSFP9BTVSTPDUTYCOXKHYWZ9ICJNHXZOVXHJZJXWDKFLM99999", 
#    "IKGGXDUCTTCMSZSZUEUXUGOIRGHR9BTZCWPGLVNJBDLXEQVNRFICDUKAIUNBGMTQCFLPPK9PORGE99999", 
#    "HXBVATGCV9H9IDDYTSWSALATUCQ9FI9RYRQJYPNEXOIQGQEIGTAQZRNNMSLQIGQVOHHAIHVJTAULZ9999", 
#    "CETG9ZNXOXZEBKYKSAOVECJAD9FMCGB9ZIMBUFMTUZCZS9PI9OXUIVHWGRMZGVVNLIAKMEULNMIC99999", 
#    "S9KWBPUOJGSDODPPAZYTCAJAIKHZPOFEQXKOBDKRSZRB9MXSQXOIQBIDXGCQ99XNJJS9DTNRTHPLZ9999"
#  ], 
#  "duration" => 0_i64
#}
```

#### `getTrytes`


```crystal
api.get_trytes
# => {
#  "trytes" => [
#    "QBTCHDEADDPCXCSCEAXCBDEAXCCDHDPCGDEAUCCDFDEAGDIDDDDDCDFDHDXCBDVCEAHDWCTCEAHDPADADXCBDVCEAHDFDPCBD...."
#  ], 
#  "duration" => 1_i64
#}
```

#### `getInclusionStates`


```crystal
api.get_inclusion_states
# => {
#  "states" => [false], 
#  "duration" => 0_i64
#}
```

#### `getBalances`


```crystal
api.get_balances
# => {
#  "balances" => ["606000000"], 
#  "references" => ["DKNTVXJYURETTWFBKWKKRRPVMNRZHZQJCRUHXLOMOADJPNYNNEHOUPMFLPSHURZHJJMFEQSTADATA9999"], 
#  "milestoneIndex" => 350240_i64, 
#  "duration" => 0_i64
#}
```

## Contributing

1. Fork it ( https://github.com/liepaja/iota.lib.crystal/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request

## Contributors

- [liepaja](https://github.com/[your-github-name])  - creator, maintainer
