#!/bin/bash

#create a lifecycle policy
curl -X PUT "elastic.k3s.karva.io:9300/_ilm/policy/timeseries_policy" -H 'Content-Type: application/json' -d'
{
  "policy": {
    "phases": {
      "hot": {                                
        "actions": {
          "rollover": {
            "max_primary_shard_size": "10GB", 
            "max_age": "1d"
          }
        }
      },
      "delete": {
        "min_age": "7d",                     
        "actions": {
          "delete": {}                        
        }
      }
    }
  }
}
'

#create index template 
curl -X PUT "elastic.k3s.karva.io:9300/_index_template/timeseries_template" -H 'Content-Type: application/json' -d'
{
  "index_patterns": ["timeseries"],                   
  "data_stream": { },
  "template": {
    "settings": {
      "number_of_shards": 1,
      "number_of_replicas": 1,
      "index.lifecycle.name": "timeseries_policy"     
    }
  }
}
'
