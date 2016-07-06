# valerianomanassero/elasticsearch-centos
A Docker container for Elasticsearch, index engine in an ELK stack.
The image is based on a CentOS 7 image.

## Recommended Options

**Volumes**

- elasticsearch_data:/var/lib/elasticsearch:rw (Read/Write) - Defines the Elasticsearch index data persistence on filesystem.

**Binding port**
- 9200:9200 - Container exposes 9200 port.

## Docker usage

```
docker run -v elasticsearch_data:/var/lib/elasticsearch:rw -p 9200:9200 -d valerianomanassero/elasticsearch-centos
```
