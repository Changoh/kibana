# Kibana
Kibana(5.2.2) Configuration Example with Docker.

### Prerequisites
You need install Docker service and define $KIBNAN_HOME.

### Directories
Create $KIBANA_HOME/log before you start elasticsearch.
```
$ES_HOME/config/kibana.yml : basic kibana configuration
$ES_HOME/log : output log file of kibana
```

### Usages
Start kibana.
```
. ./servicectl.sh start
```
Stop kibana.
```
. ./servicectl.sh stop
```

port : 5601

