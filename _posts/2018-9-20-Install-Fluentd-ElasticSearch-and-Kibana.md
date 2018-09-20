---
layout: post
title: Install Fluent, ElasticSearch and Kibana
---

# Install Fluent
```
https://docs.fluentd.org/v1.0/articles/install-by-deb
```

# Install ElasticSearch and Kibana
```
docker run -d --name elas -p 9200:9200 -p 9300:9300 elasticsearch
docker run -d --name kibana --link elas:elasticsearch -p 5601:5601 kibana
```

# Connect Fluent to ElasticSearch
```
https://docs.fluentd.org/v1.0/articles/out_elasticsearch
```
