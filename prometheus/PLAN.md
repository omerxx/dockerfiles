# Planning Prometheus Cluster

### Requirements
Prometheus can be deployed as a standalone server, but in order to be affective in terms of visualization and alerting, additional helpers are required:

1. Alerting - [Alert Manager](https://github.com/prometheus/alertmanager)
1. Exporters
    * [GitHub](https://github.com/infinityworks/github-exporter)
    * [CloudFlare](https://github.com/wehkamp/docker-prometheus-cloudflare-exporter)
    * [AWS Health](https://github.com/Jimdo/aws-health-exporter) - Only to business support and above
    * [ECS](https://github.com/slok/ecs-exporter)
    * [Other Exporters](https://prometheus.io/docs/instrumenting/exporters/)
1. [Push Gateway](https://github.com/prometheus/pushgateway)
