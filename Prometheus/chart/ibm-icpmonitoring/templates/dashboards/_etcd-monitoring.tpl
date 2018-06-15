{{/*
  Licensed Materials - Property of IBM
  5737-E67
  @ Copyright IBM Corporation 2016, 2018. All Rights Reserved.
  US Government Users Restricted Rights - Use, duplication or disclosure restricted by GSA ADP Schedule Contract with IBM Corp.
*/}}

{{/* Etcd Monitoring Dashboard File */}}
{{- define "etcdMonitoring" }}
etcd-monitoring.json: |-
    {
      "__inputs": [
        {
          "name": "DS_PROMETHEUS",
          "label": "prometheus",
          "description": "",
          "type": "datasource",
          "pluginId": "prometheus",
          "pluginName": "Prometheus"
        }
      ],
      "__requires": [
        {
          "type": "grafana",
          "id": "grafana",
          "name": "Grafana",
          "version": "4.4.1"
        },
        {
          "type": "panel",
          "id": "graph",
          "name": "Graph",
          "version": ""
        },
        {
          "type": "datasource",
          "id": "prometheus",
          "name": "Prometheus",
          "version": "1.0.0"
        },
        {
          "type": "panel",
          "id": "singlestat",
          "name": "Singlestat",
          "version": ""
        }
      ],
      "annotations": {
        "list": []
      },
      "editable": true,
      "gnetId": 3070,
      "graphTooltip": 0,
      "hideControls": false,
      "id": null,
      "links": [],
      "rows": [
        {
          "collapse": false,
          "height": 250,
          "panels": [
            {
              "cacheTimeout": null,
              "colorBackground": false,
              "colorValue": true,
              "colors": [
                "rgba(245, 54, 54, 0.9)",
                "rgba(237, 129, 40, 0.89)",
                "rgba(50, 172, 45, 0.97)"
              ],
              "datasource": "prometheus",
              "format": "none",
              "gauge": {
                "maxValue": 100,
                "minValue": 0,
                "show": false,
                "thresholdLabels": false,
                "thresholdMarkers": true
              },
              "id": 44,
              "interval": null,
              "links": [],
              "mappingType": 1,
              "mappingTypes": [
                {
                  "name": "value to text",
                  "value": 1
                },
                {
                  "name": "range to text",
                  "value": 2
                }
              ],
              "maxDataPoints": 100,
              "nullPointMode": "connected",
              "nullText": null,
              "postfix": "",
              "postfixFontSize": "50%",
              "prefix": "",
              "prefixFontSize": "50%",
              "rangeMaps": [
                {
                  "from": "null",
                  "text": "N/A",
                  "to": "null"
                }
              ],
              "span": 4,
              "sparkline": {
                "fillColor": "rgba(31, 118, 189, 0.18)",
                "full": false,
                "lineColor": "rgb(31, 120, 193)",
                "show": false
              },
              "tableColumn": "",
              "targets": [
                {
                  "expr": "max(etcd_server_has_leader)",
                  "format": "time_series",
                  "intervalFactor": 2,
                  "refId": "A",
                  "step": 600
                }
              ],
              "thresholds": "0,1",
              "title": "Etcd has a leader?",
              "type": "singlestat",
              "valueFontSize": "80%",
              "valueMaps": [
                {
                  "op": "=",
                  "text": "YES",
                  "value": "1"
                },
                {
                  "op": "=",
                  "text": "NO",
                  "value": "0"
                }
              ],
              "valueName": "avg"
            },
            {
              "cacheTimeout": null,
              "colorBackground": false,
              "colorValue": false,
              "colors": [
                "rgba(245, 54, 54, 0.9)",
                "rgba(237, 129, 40, 0.89)",
                "rgba(50, 172, 45, 0.97)"
              ],
              "datasource": "prometheus",
              "format": "none",
              "gauge": {
                "maxValue": 100,
                "minValue": 0,
                "show": false,
                "thresholdLabels": false,
                "thresholdMarkers": true
              },
              "id": 42,
              "interval": null,
              "links": [],
              "mappingType": 1,
              "mappingTypes": [
                {
                  "name": "value to text",
                  "value": 1
                },
                {
                  "name": "range to text",
                  "value": 2
                }
              ],
              "maxDataPoints": 100,
              "nullPointMode": "connected",
              "nullText": null,
              "postfix": "",
              "postfixFontSize": "50%",
              "prefix": "",
              "prefixFontSize": "50%",
              "rangeMaps": [
                {
                  "from": "null",
                  "text": "N/A",
                  "to": "null"
                }
              ],
              "span": 4,
              "sparkline": {
                "fillColor": "rgba(31, 118, 189, 0.18)",
                "full": false,
                "lineColor": "rgb(31, 120, 193)",
                "show": false
              },
              "tableColumn": "",
              "targets": [
                {
                  "expr": "max(etcd_server_leader_changes_seen_total)",
                  "format": "time_series",
                  "intervalFactor": 2,
                  "refId": "A",
                  "step": 600
                }
              ],
              "thresholds": "",
              "title": "The number of leader changes seen",
              "type": "singlestat",
              "valueFontSize": "80%",
              "valueMaps": [
                {
                  "op": "=",
                  "text": "N/A",
                  "value": "null"
                }
              ],
              "valueName": "avg"
            },
            {
              "cacheTimeout": null,
              "colorBackground": false,
              "colorValue": false,
              "colors": [
                "rgba(245, 54, 54, 0.9)",
                "rgba(237, 129, 40, 0.89)",
                "rgba(50, 172, 45, 0.97)"
              ],
              "datasource": "prometheus",
              "format": "none",
              "gauge": {
                "maxValue": 100,
                "minValue": 0,
                "show": false,
                "thresholdLabels": false,
                "thresholdMarkers": true
              },
              "id": 43,
              "interval": null,
              "links": [],
              "mappingType": 1,
              "mappingTypes": [
                {
                  "name": "value to text",
                  "value": 1
                },
                {
                  "name": "range to text",
                  "value": 2
                }
              ],
              "maxDataPoints": 100,
              "nullPointMode": "connected",
              "nullText": null,
              "postfix": "",
              "postfixFontSize": "50%",
              "prefix": "",
              "prefixFontSize": "50%",
              "rangeMaps": [
                {
                  "from": "null",
                  "text": "N/A",
                  "to": "null"
                }
              ],
              "span": 4,
              "sparkline": {
                "fillColor": "rgba(31, 118, 189, 0.18)",
                "full": false,
                "lineColor": "rgb(31, 120, 193)",
                "show": false
              },
              "tableColumn": "",
              "targets": [
                {
                  "expr": "max(etcd_server_leader_changes_seen_total)",
                  "format": "time_series",
                  "intervalFactor": 2,
                  "refId": "A",
                  "step": 600
                }
              ],
              "thresholds": "",
              "title": "The total number of failed proposals seen",
              "type": "singlestat",
              "valueFontSize": "80%",
              "valueMaps": [
                {
                  "op": "=",
                  "text": "N/A",
                  "value": "null"
                }
              ],
              "valueName": "avg"
            }
          ],
          "repeat": null,
          "repeatIteration": null,
          "repeatRowId": null,
          "showTitle": false,
          "title": "Dashboard Row",
          "titleSize": "h6"
        },
        {
          "collapse": false,
          "height": 252,
          "panels": [
            {
              "aliasColors": {},
              "bars": false,
              "dashLength": 10,
              "dashes": false,
              "datasource": "prometheus",
              "editable": true,
              "error": false,
              "fill": 0,
              "id": 23,
              "legend": {
                "avg": false,
                "current": false,
                "max": false,
                "min": false,
                "show": false,
                "total": false,
                "values": false
              },
              "lines": true,
              "linewidth": 2,
              "links": [],
              "nullPointMode": "connected",
              "percentage": false,
              "pointradius": 5,
              "points": false,
              "renderer": "flot",
              "seriesOverrides": [],
              "spaceLength": 10,
              "span": 6,
              "stack": false,
              "steppedLine": false,
              "targets": [
                {
                  "expr": "sum(rate(grpc_server_started_total{grpc_type=\"unary\"}[5m]))",
                  "format": "time_series",
                  "intervalFactor": 2,
                  "legendFormat": "RPC Rate",
                  "metric": "grpc_server_started_total",
                  "refId": "A",
                  "step": 60
                },
                {
                  "expr": "sum(rate(grpc_server_handled_total{grpc_type=\"unary\",grpc_code!=\"OK\"}[5m]))",
                  "format": "time_series",
                  "intervalFactor": 2,
                  "legendFormat": "RPC Failed Rate",
                  "metric": "grpc_server_handled_total",
                  "refId": "B",
                  "step": 60
                }
              ],
              "thresholds": [],
              "timeFrom": null,
              "timeShift": null,
              "title": "RPC Rate",
              "tooltip": {
                "msResolution": false,
                "shared": true,
                "sort": 0,
                "value_type": "individual"
              },
              "type": "graph",
              "xaxis": {
                "buckets": null,
                "mode": "time",
                "name": null,
                "show": true,
                "values": []
              },
              "yaxes": [
                {
                  "format": "ops",
                  "label": null,
                  "logBase": 1,
                  "max": null,
                  "min": null,
                  "show": true
                },
                {
                  "format": "short",
                  "label": null,
                  "logBase": 1,
                  "max": null,
                  "min": null,
                  "show": true
                }
              ]
            },
            {
              "aliasColors": {},
              "bars": false,
              "dashLength": 10,
              "dashes": false,
              "datasource": "prometheus",
              "editable": true,
              "error": false,
              "fill": 0,
              "id": 41,
              "legend": {
                "avg": false,
                "current": false,
                "max": false,
                "min": false,
                "show": false,
                "total": false,
                "values": false
              },
              "lines": true,
              "linewidth": 2,
              "links": [],
              "nullPointMode": "connected",
              "percentage": false,
              "pointradius": 5,
              "points": false,
              "renderer": "flot",
              "seriesOverrides": [],
              "spaceLength": 10,
              "span": 6,
              "stack": true,
              "steppedLine": false,
              "targets": [
                {
                  "expr": "sum(grpc_server_started_total{grpc_service=\"etcdserverpb.Watch\",grpc_type=\"bidi_stream\"}) - sum(grpc_server_handled_total{grpc_service=\"etcdserverpb.Watch\",grpc_type=\"bidi_stream\"})",
                  "format": "time_series",
                  "intervalFactor": 2,
                  "legendFormat": "Watch Streams",
                  "metric": "grpc_server_handled_total",
                  "refId": "A",
                  "step": 60
                },
                {
                  "expr": "sum(grpc_server_started_total{grpc_service=\"etcdserverpb.Lease\",grpc_type=\"bidi_stream\"}) - sum(grpc_server_handled_total{grpc_service=\"etcdserverpb.Lease\",grpc_type=\"bidi_stream\"})",
                  "format": "time_series",
                  "intervalFactor": 2,
                  "legendFormat": "Lease Streams",
                  "metric": "grpc_server_handled_total",
                  "refId": "B",
                  "step": 60
                }
              ],
              "thresholds": [],
              "timeFrom": null,
              "timeShift": null,
              "title": "Active Streams",
              "tooltip": {
                "msResolution": false,
                "shared": true,
                "sort": 0,
                "value_type": "individual"
              },
              "type": "graph",
              "xaxis": {
                "buckets": null,
                "mode": "time",
                "name": null,
                "show": true,
                "values": []
              },
              "yaxes": [
                {
                  "format": "short",
                  "label": "",
                  "logBase": 1,
                  "max": null,
                  "min": null,
                  "show": true
                },
                {
                  "format": "short",
                  "label": null,
                  "logBase": 1,
                  "max": null,
                  "min": null,
                  "show": true
                }
              ]
            }
          ],
          "repeat": null,
          "repeatIteration": null,
          "repeatRowId": null,
          "showTitle": false,
          "title": "Row",
          "titleSize": "h6"
        },
        {
          "collapse": false,
          "height": "250px",
          "panels": [
            {
              "aliasColors": {},
              "bars": false,
              "dashLength": 10,
              "dashes": false,
              "datasource": "prometheus",
              "decimals": null,
              "editable": true,
              "error": false,
              "fill": 0,
              "grid": {},
              "id": 1,
              "legend": {
                "avg": false,
                "current": false,
                "max": false,
                "min": false,
                "show": false,
                "total": false,
                "values": false
              },
              "lines": true,
              "linewidth": 2,
              "links": [],
              "nullPointMode": "connected",
              "percentage": false,
              "pointradius": 5,
              "points": false,
              "renderer": "flot",
              "seriesOverrides": [],
              "spaceLength": 10,
              "span": 4,
              "stack": false,
              "steppedLine": false,
              "targets": [
                {
                  "expr": "etcd_debugging_mvcc_db_total_size_in_bytes",
                  "format": "time_series",
                  "hide": false,
                  "interval": "",
                  "intervalFactor": 2,
                  "legendFormat": "{{ "{{" }}instance{{ "}}" }} DB Size",
                  "metric": "",
                  "refId": "A",
                  "step": 120
                }
              ],
              "thresholds": [],
              "timeFrom": null,
              "timeShift": null,
              "title": "DB Size",
              "tooltip": {
                "msResolution": false,
                "shared": true,
                "sort": 0,
                "value_type": "cumulative"
              },
              "type": "graph",
              "xaxis": {
                "buckets": null,
                "mode": "time",
                "name": null,
                "show": true,
                "values": []
              },
              "yaxes": [
                {
                  "format": "bytes",
                  "logBase": 1,
                  "max": null,
                  "min": null,
                  "show": true
                },
                {
                  "format": "short",
                  "logBase": 1,
                  "max": null,
                  "min": null,
                  "show": false
                }
              ]
            },
            {
              "aliasColors": {},
              "bars": false,
              "dashLength": 10,
              "dashes": false,
              "datasource": "prometheus",
              "editable": true,
              "error": false,
              "fill": 0,
              "grid": {},
              "id": 3,
              "legend": {
                "avg": false,
                "current": false,
                "max": false,
                "min": false,
                "show": false,
                "total": false,
                "values": false
              },
              "lines": true,
              "linewidth": 2,
              "links": [],
              "nullPointMode": "connected",
              "percentage": false,
              "pointradius": 1,
              "points": false,
              "renderer": "flot",
              "seriesOverrides": [],
              "spaceLength": 10,
              "span": 4,
              "stack": false,
              "steppedLine": true,
              "targets": [
                {
                  "expr": "histogram_quantile(0.99, sum(rate(etcd_disk_wal_fsync_duration_seconds_bucket[5m])) by (instance, le))",
                  "format": "time_series",
                  "hide": false,
                  "intervalFactor": 2,
                  "legendFormat": "{{ "{{" }}instance{{ "}}" }} WAL fsync",
                  "metric": "etcd_disk_wal_fsync_duration_seconds_bucket",
                  "refId": "A",
                  "step": 120
                },
                {
                  "expr": "histogram_quantile(0.99, sum(rate(etcd_disk_backend_commit_duration_seconds_bucket[5m])) by (instance, le))",
                  "format": "time_series",
                  "intervalFactor": 2,
                  "legendFormat": "{{ "{{" }}instance{{ "}}" }} DB fsync",
                  "metric": "etcd_disk_backend_commit_duration_seconds_bucket",
                  "refId": "B",
                  "step": 120
                }
              ],
              "thresholds": [],
              "timeFrom": null,
              "timeShift": null,
              "title": "Disk Sync Duration",
              "tooltip": {
                "msResolution": false,
                "shared": true,
                "sort": 0,
                "value_type": "cumulative"
              },
              "type": "graph",
              "xaxis": {
                "buckets": null,
                "mode": "time",
                "name": null,
                "show": true,
                "values": []
              },
              "yaxes": [
                {
                  "format": "s",
                  "logBase": 1,
                  "max": null,
                  "min": null,
                  "show": true
                },
                {
                  "format": "short",
                  "logBase": 1,
                  "max": null,
                  "min": null,
                  "show": false
                }
              ]
            },
            {
              "aliasColors": {},
              "bars": false,
              "dashLength": 10,
              "dashes": false,
              "datasource": "prometheus",
              "editable": true,
              "error": false,
              "fill": 0,
              "id": 29,
              "legend": {
                "avg": false,
                "current": false,
                "max": false,
                "min": false,
                "show": false,
                "total": false,
                "values": false
              },
              "lines": true,
              "linewidth": 2,
              "links": [],
              "nullPointMode": "connected",
              "percentage": false,
              "pointradius": 5,
              "points": false,
              "renderer": "flot",
              "seriesOverrides": [],
              "spaceLength": 10,
              "span": 4,
              "stack": false,
              "steppedLine": false,
              "targets": [
                {
                  "expr": "process_resident_memory_bytes",
                  "format": "time_series",
                  "intervalFactor": 2,
                  "legendFormat": "{{ "{{" }}instance{{ "}}" }} Resident Memory",
                  "metric": "process_resident_memory_bytes",
                  "refId": "A",
                  "step": 120
                }
              ],
              "thresholds": [],
              "timeFrom": null,
              "timeShift": null,
              "title": "Memory",
              "tooltip": {
                "msResolution": false,
                "shared": true,
                "sort": 0,
                "value_type": "individual"
              },
              "type": "graph",
              "xaxis": {
                "buckets": null,
                "mode": "time",
                "name": null,
                "show": true,
                "values": []
              },
              "yaxes": [
                {
                  "format": "bytes",
                  "label": null,
                  "logBase": 1,
                  "max": null,
                  "min": null,
                  "show": true
                },
                {
                  "format": "short",
                  "label": null,
                  "logBase": 1,
                  "max": null,
                  "min": null,
                  "show": true
                }
              ]
            }
          ],
          "repeat": null,
          "repeatIteration": null,
          "repeatRowId": null,
          "showTitle": false,
          "title": "New row",
          "titleSize": "h6"
        },
        {
          "collapse": false,
          "height": "250px",
          "panels": [
            {
              "aliasColors": {},
              "bars": false,
              "dashLength": 10,
              "dashes": false,
              "datasource": "prometheus",
              "editable": true,
              "error": false,
              "fill": 5,
              "id": 22,
              "legend": {
                "avg": false,
                "current": false,
                "max": false,
                "min": false,
                "show": false,
                "total": false,
                "values": false
              },
              "lines": true,
              "linewidth": 2,
              "links": [],
              "nullPointMode": "connected",
              "percentage": false,
              "pointradius": 5,
              "points": false,
              "renderer": "flot",
              "seriesOverrides": [],
              "spaceLength": 10,
              "span": 3,
              "stack": true,
              "steppedLine": false,
              "targets": [
                {
                  "expr": "rate(etcd_network_client_grpc_received_bytes_total[5m])",
                  "format": "time_series",
                  "intervalFactor": 2,
                  "legendFormat": "{{ "{{" }}instance{{ "}}" }} Client Traffic In",
                  "metric": "etcd_network_client_grpc_received_bytes_total",
                  "refId": "A",
                  "step": 120
                }
              ],
              "thresholds": [],
              "timeFrom": null,
              "timeShift": null,
              "title": "Client Traffic In",
              "tooltip": {
                "msResolution": false,
                "shared": true,
                "sort": 0,
                "value_type": "individual"
              },
              "type": "graph",
              "xaxis": {
                "buckets": null,
                "mode": "time",
                "name": null,
                "show": true,
                "values": []
              },
              "yaxes": [
                {
                  "format": "short",
                  "label": null,
                  "logBase": 1,
                  "max": null,
                  "min": null,
                  "show": true
                },
                {
                  "format": "short",
                  "label": null,
                  "logBase": 1,
                  "max": null,
                  "min": null,
                  "show": true
                }
              ]
            },
            {
              "aliasColors": {},
              "bars": false,
              "dashLength": 10,
              "dashes": false,
              "datasource": "prometheus",
              "editable": true,
              "error": false,
              "fill": 5,
              "id": 21,
              "legend": {
                "avg": false,
                "current": false,
                "max": false,
                "min": false,
                "show": false,
                "total": false,
                "values": false
              },
              "lines": true,
              "linewidth": 2,
              "links": [],
              "nullPointMode": "connected",
              "percentage": false,
              "pointradius": 5,
              "points": false,
              "renderer": "flot",
              "seriesOverrides": [],
              "spaceLength": 10,
              "span": 3,
              "stack": true,
              "steppedLine": false,
              "targets": [
                {
                  "expr": "rate(etcd_network_client_grpc_sent_bytes_total[5m])",
                  "format": "time_series",
                  "intervalFactor": 2,
                  "legendFormat": "{{ "{{" }}instance{{ "}}" }} Client Traffic Out",
                  "metric": "etcd_network_client_grpc_sent_bytes_total",
                  "refId": "A",
                  "step": 120
                }
              ],
              "thresholds": [],
              "timeFrom": null,
              "timeShift": null,
              "title": "Client Traffic Out",
              "tooltip": {
                "msResolution": false,
                "shared": true,
                "sort": 0,
                "value_type": "individual"
              },
              "type": "graph",
              "xaxis": {
                "buckets": null,
                "mode": "time",
                "name": null,
                "show": true,
                "values": []
              },
              "yaxes": [
                {
                  "format": "Bps",
                  "label": null,
                  "logBase": 1,
                  "max": null,
                  "min": null,
                  "show": true
                },
                {
                  "format": "short",
                  "label": null,
                  "logBase": 1,
                  "max": null,
                  "min": null,
                  "show": true
                }
              ]
            },
            {
              "aliasColors": {},
              "bars": false,
              "dashLength": 10,
              "dashes": false,
              "datasource": "prometheus",
              "editable": true,
              "error": false,
              "fill": 0,
              "id": 20,
              "legend": {
                "avg": false,
                "current": false,
                "max": false,
                "min": false,
                "show": false,
                "total": false,
                "values": false
              },
              "lines": true,
              "linewidth": 2,
              "links": [],
              "nullPointMode": "connected",
              "percentage": false,
              "pointradius": 5,
              "points": false,
              "renderer": "flot",
              "seriesOverrides": [],
              "spaceLength": 10,
              "span": 3,
              "stack": false,
              "steppedLine": false,
              "targets": [
                {
                  "expr": "sum(rate(etcd_network_peer_received_bytes_total[5m])) by (instance)",
                  "format": "time_series",
                  "intervalFactor": 2,
                  "legendFormat": "{{ "{{" }}instance{{ "}}" }} Peer Traffic In",
                  "metric": "etcd_network_peer_received_bytes_total",
                  "refId": "A",
                  "step": 120
                }
              ],
              "thresholds": [],
              "timeFrom": null,
              "timeShift": null,
              "title": "Peer Traffic In",
              "tooltip": {
                "msResolution": false,
                "shared": true,
                "sort": 0,
                "value_type": "individual"
              },
              "type": "graph",
              "xaxis": {
                "buckets": null,
                "mode": "time",
                "name": null,
                "show": true,
                "values": []
              },
              "yaxes": [
                {
                  "format": "Bps",
                  "label": null,
                  "logBase": 1,
                  "max": null,
                  "min": null,
                  "show": true
                },
                {
                  "format": "short",
                  "label": null,
                  "logBase": 1,
                  "max": null,
                  "min": null,
                  "show": true
                }
              ]
            },
            {
              "aliasColors": {},
              "bars": false,
              "dashLength": 10,
              "dashes": false,
              "datasource": "prometheus",
              "decimals": null,
              "editable": true,
              "error": false,
              "fill": 0,
              "grid": {},
              "id": 16,
              "legend": {
                "avg": false,
                "current": false,
                "max": false,
                "min": false,
                "show": false,
                "total": false,
                "values": false
              },
              "lines": true,
              "linewidth": 2,
              "links": [],
              "nullPointMode": "connected",
              "percentage": false,
              "pointradius": 5,
              "points": false,
              "renderer": "flot",
              "seriesOverrides": [],
              "spaceLength": 10,
              "span": 3,
              "stack": false,
              "steppedLine": false,
              "targets": [
                {
                  "expr": "sum(rate(etcd_network_peer_sent_bytes_total[5m])) by (instance)",
                  "format": "time_series",
                  "hide": false,
                  "interval": "",
                  "intervalFactor": 2,
                  "legendFormat": "{{ "{{" }}instance{{ "}}" }} Peer Traffic Out",
                  "metric": "etcd_network_peer_sent_bytes_total",
                  "refId": "A",
                  "step": 120
                }
              ],
              "thresholds": [],
              "timeFrom": null,
              "timeShift": null,
              "title": "Peer Traffic Out",
              "tooltip": {
                "msResolution": false,
                "shared": true,
                "sort": 0,
                "value_type": "cumulative"
              },
              "type": "graph",
              "xaxis": {
                "buckets": null,
                "mode": "time",
                "name": null,
                "show": true,
                "values": []
              },
              "yaxes": [
                {
                  "format": "Bps",
                  "logBase": 1,
                  "max": null,
                  "min": null,
                  "show": true
                },
                {
                  "format": "short",
                  "logBase": 1,
                  "max": null,
                  "min": null,
                  "show": true
                }
              ]
            }
          ],
          "repeat": null,
          "repeatIteration": null,
          "repeatRowId": null,
          "showTitle": false,
          "title": "New row",
          "titleSize": "h6"
        },
        {
          "collapse": false,
          "height": "250px",
          "panels": [
            {
              "aliasColors": {},
              "bars": false,
              "dashLength": 10,
              "dashes": false,
              "datasource": "prometheus",
              "editable": true,
              "error": false,
              "fill": 0,
              "id": 40,
              "legend": {
                "avg": false,
                "current": false,
                "max": false,
                "min": false,
                "show": false,
                "total": false,
                "values": false
              },
              "lines": true,
              "linewidth": 2,
              "links": [],
              "nullPointMode": "connected",
              "percentage": false,
              "pointradius": 5,
              "points": false,
              "renderer": "flot",
              "seriesOverrides": [],
              "spaceLength": 10,
              "span": 6,
              "stack": false,
              "steppedLine": false,
              "targets": [
                {
                  "expr": "sum(rate(etcd_server_proposals_failed_total[5m]))",
                  "format": "time_series",
                  "intervalFactor": 2,
                  "legendFormat": "Proposal Failure Rate",
                  "metric": "etcd_server_proposals_failed_total",
                  "refId": "A",
                  "step": 60
                },
                {
                  "expr": "sum(etcd_server_proposals_pending)",
                  "format": "time_series",
                  "intervalFactor": 2,
                  "legendFormat": "Proposal Pending Total",
                  "metric": "etcd_server_proposals_pending",
                  "refId": "B",
                  "step": 60
                },
                {
                  "expr": "sum(rate(etcd_server_proposals_committed_total[5m]))",
                  "format": "time_series",
                  "intervalFactor": 2,
                  "legendFormat": "Proposal Commit Rate",
                  "metric": "etcd_server_proposals_committed_total",
                  "refId": "C",
                  "step": 60
                },
                {
                  "expr": "sum(rate(etcd_server_proposals_applied_total[5m]))",
                  "format": "time_series",
                  "intervalFactor": 2,
                  "legendFormat": "Proposal Apply Rate",
                  "refId": "D",
                  "step": 60
                }
              ],
              "thresholds": [],
              "timeFrom": null,
              "timeShift": null,
              "title": "Raft Proposals",
              "tooltip": {
                "msResolution": false,
                "shared": true,
                "sort": 0,
                "value_type": "individual"
              },
              "type": "graph",
              "xaxis": {
                "buckets": null,
                "mode": "time",
                "name": null,
                "show": true,
                "values": []
              },
              "yaxes": [
                {
                  "format": "short",
                  "label": "",
                  "logBase": 1,
                  "max": null,
                  "min": null,
                  "show": true
                },
                {
                  "format": "short",
                  "label": null,
                  "logBase": 1,
                  "max": null,
                  "min": null,
                  "show": true
                }
              ]
            },
            {
              "aliasColors": {},
              "bars": false,
              "dashLength": 10,
              "dashes": false,
              "datasource": "prometheus",
              "decimals": 0,
              "editable": true,
              "error": false,
              "fill": 0,
              "id": 19,
              "legend": {
                "alignAsTable": false,
                "avg": false,
                "current": false,
                "max": false,
                "min": false,
                "rightSide": false,
                "show": false,
                "total": false,
                "values": false
              },
              "lines": true,
              "linewidth": 2,
              "links": [],
              "nullPointMode": "connected",
              "percentage": false,
              "pointradius": 5,
              "points": false,
              "renderer": "flot",
              "seriesOverrides": [],
              "spaceLength": 10,
              "span": 6,
              "stack": false,
              "steppedLine": false,
              "targets": [
                {
                  "expr": "changes(etcd_server_leader_changes_seen_total[1d])",
                  "format": "time_series",
                  "intervalFactor": 2,
                  "legendFormat": "{{ "{{" }}instance{{ "}}" }} Total Leader Elections Per Day",
                  "metric": "etcd_server_leader_changes_seen_total",
                  "refId": "A",
                  "step": 60
                }
              ],
              "thresholds": [],
              "timeFrom": null,
              "timeShift": null,
              "title": "Total Leader Elections Per Day",
              "tooltip": {
                "msResolution": false,
                "shared": true,
                "sort": 0,
                "value_type": "individual"
              },
              "type": "graph",
              "xaxis": {
                "buckets": null,
                "mode": "time",
                "name": null,
                "show": true,
                "values": []
              },
              "yaxes": [
                {
                  "format": "short",
                  "label": null,
                  "logBase": 1,
                  "max": null,
                  "min": null,
                  "show": true
                },
                {
                  "format": "short",
                  "label": null,
                  "logBase": 1,
                  "max": null,
                  "min": null,
                  "show": true
                }
              ]
            }
          ],
          "repeat": null,
          "repeatIteration": null,
          "repeatRowId": null,
          "showTitle": false,
          "title": "New row",
          "titleSize": "h6"
        },
        {
          "collapse": false,
          "height": 250,
          "panels": [
            {
              "aliasColors": {},
              "bars": false,
              "dashLength": 10,
              "dashes": false,
              "datasource": "prometheus",
              "description": "proposals_committed_total records the total number of consensus proposals committed. This gauge should increase over time if the cluster is healthy. Several healthy members of an etcd cluster may have different total committed proposals at once. This discrepancy may be due to recovering from peers after starting, lagging behind the leader, or being the leader and therefore having the most commits. It is important to monitor this metric across all the members in the cluster; a consistently large lag between a single member and its leader indicates that member is slow or unhealthy.\n\nproposals_applied_total records the total number of consensus proposals applied. The etcd server applies every committed proposal asynchronously. The difference between proposals_committed_total and proposals_applied_total should usually be small (within a few thousands even under high load). If the difference between them continues to rise, it indicates that the etcd server is overloaded. This might happen when applying expensive queries like heavy range queries or large txn operations.",
              "fill": 1,
              "id": 2,
              "legend": {
                "alignAsTable": true,
                "avg": true,
                "current": true,
                "max": true,
                "min": false,
                "rightSide": false,
                "show": true,
                "total": false,
                "values": true
              },
              "lines": true,
              "linewidth": 1,
              "links": [],
              "nullPointMode": "null",
              "percentage": false,
              "pointradius": 5,
              "points": false,
              "renderer": "flot",
              "seriesOverrides": [],
              "spaceLength": 10,
              "span": 6,
              "stack": false,
              "steppedLine": false,
              "targets": [
                {
                  "expr": "sum(rate(etcd_server_proposals_committed_total[5m]))",
                  "format": "time_series",
                  "intervalFactor": 2,
                  "legendFormat": "total number of consensus proposals committed",
                  "metric": "",
                  "refId": "A",
                  "step": 60
                },
                {
                  "expr": "sum(rate(etcd_server_proposals_applied_total[5m]))",
                  "format": "time_series",
                  "intervalFactor": 2,
                  "legendFormat": "total number of consensus proposals applied",
                  "metric": "",
                  "refId": "B",
                  "step": 60
                }
              ],
              "thresholds": [],
              "timeFrom": null,
              "timeShift": null,
              "title": "The total number of consensus proposals committed",
              "tooltip": {
                "shared": true,
                "sort": 0,
                "value_type": "individual"
              },
              "type": "graph",
              "xaxis": {
                "buckets": null,
                "mode": "time",
                "name": null,
                "show": true,
                "values": []
              },
              "yaxes": [
                {
                  "format": "short",
                  "label": null,
                  "logBase": 1,
                  "max": null,
                  "min": null,
                  "show": true
                },
                {
                  "format": "short",
                  "label": "",
                  "logBase": 1,
                  "max": null,
                  "min": null,
                  "show": true
                }
              ]
            },
            {
              "aliasColors": {},
              "bars": false,
              "dashLength": 10,
              "dashes": false,
              "datasource": "prometheus",
              "description": "indicates how many proposals are queued to commit. Rising pending proposals suggests there is a high client load or the member cannot commit proposals.",
              "fill": 1,
              "id": 5,
              "legend": {
                "avg": false,
                "current": false,
                "max": false,
                "min": false,
                "show": true,
                "total": false,
                "values": false
              },
              "lines": true,
              "linewidth": 1,
              "links": [],
              "nullPointMode": "null",
              "percentage": false,
              "pointradius": 5,
              "points": false,
              "renderer": "flot",
              "seriesOverrides": [],
              "spaceLength": 10,
              "span": 6,
              "stack": false,
              "steppedLine": false,
              "targets": [
                {
                  "expr": "sum(etcd_server_proposals_pending)",
                  "format": "time_series",
                  "intervalFactor": 2,
                  "legendFormat": "Proposals pending",
                  "refId": "A",
                  "step": 60
                }
              ],
              "thresholds": [],
              "timeFrom": null,
              "timeShift": null,
              "title": "Proposals pending",
              "tooltip": {
                "shared": true,
                "sort": 0,
                "value_type": "individual"
              },
              "type": "graph",
              "xaxis": {
                "buckets": null,
                "mode": "time",
                "name": null,
                "show": true,
                "values": []
              },
              "yaxes": [
                {
                  "format": "short",
                  "label": null,
                  "logBase": 1,
                  "max": null,
                  "min": null,
                  "show": true
                },
                {
                  "format": "short",
                  "label": null,
                  "logBase": 1,
                  "max": null,
                  "min": null,
                  "show": true
                }
              ]
            }
          ],
          "repeat": null,
          "repeatIteration": null,
          "repeatRowId": null,
          "showTitle": false,
          "title": "Dashboard Row",
          "titleSize": "h6"
        },
        {
          "collapse": false,
          "height": 250,
          "panels": [
            {
              "aliasColors": {},
              "bars": false,
              "dashLength": 10,
              "dashes": false,
              "datasource": "prometheus",
              "fill": 1,
              "id": 7,
              "legend": {
                "avg": false,
                "current": false,
                "max": false,
                "min": false,
                "show": true,
                "total": false,
                "values": false
              },
              "lines": true,
              "linewidth": 1,
              "links": [],
              "nullPointMode": "null",
              "percentage": false,
              "pointradius": 5,
              "points": false,
              "renderer": "flot",
              "seriesOverrides": [],
              "spaceLength": 10,
              "span": 12,
              "stack": false,
              "steppedLine": false,
              "targets": [
                {
                  "expr": "sum(rate(etcd_disk_wal_fsync_duration_seconds_sum[2m]))",
                  "format": "time_series",
                  "intervalFactor": 2,
                  "legendFormat": "\tThe latency distributions of fsync called by wal",
                  "refId": "A",
                  "step": 30
                },
                {
                  "expr": "sum(rate(etcd_disk_backend_commit_duration_seconds_sum[2m]))",
                  "format": "time_series",
                  "intervalFactor": 2,
                  "legendFormat": "The latency distributions of commit called by backend",
                  "refId": "B",
                  "step": 30
                }
              ],
              "thresholds": [],
              "timeFrom": null,
              "timeShift": null,
              "title": "Disks operations",
              "tooltip": {
                "shared": true,
                "sort": 0,
                "value_type": "individual"
              },
              "type": "graph",
              "xaxis": {
                "buckets": null,
                "mode": "time",
                "name": null,
                "show": true,
                "values": []
              },
              "yaxes": [
                {
                  "format": "short",
                  "label": null,
                  "logBase": 1,
                  "max": null,
                  "min": null,
                  "show": true
                },
                {
                  "format": "short",
                  "label": null,
                  "logBase": 1,
                  "max": null,
                  "min": null,
                  "show": true
                }
              ]
            }
          ],
          "repeat": null,
          "repeatIteration": null,
          "repeatRowId": null,
          "showTitle": false,
          "title": "Dashboard Row",
          "titleSize": "h6"
        },
        {
          "collapse": false,
          "height": 250,
          "panels": [
            {
              "aliasColors": {},
              "bars": false,
              "dashLength": 10,
              "dashes": false,
              "datasource": "prometheus",
              "fill": 1,
              "id": 8,
              "legend": {
                "avg": false,
                "current": false,
                "max": false,
                "min": false,
                "show": true,
                "total": false,
                "values": false
              },
              "lines": true,
              "linewidth": 1,
              "links": [],
              "nullPointMode": "null",
              "percentage": false,
              "pointradius": 5,
              "points": false,
              "renderer": "flot",
              "seriesOverrides": [],
              "spaceLength": 10,
              "span": 12,
              "stack": false,
              "steppedLine": false,
              "targets": [
                {
                  "expr": "sum(rate(etcd_network_client_grpc_received_bytes_total[2m]))",
                  "format": "time_series",
                  "intervalFactor": 2,
                  "legendFormat": "The total number of bytes received by grpc clients",
                  "refId": "A",
                  "step": 30
                },
                {
                  "expr": "sum(rate(etcd_network_client_grpc_sent_bytes_total[2m]))",
                  "format": "time_series",
                  "intervalFactor": 2,
                  "legendFormat": "The total number of bytes sent to grpc clients",
                  "refId": "B",
                  "step": 30
                }
              ],
              "thresholds": [],
              "timeFrom": null,
              "timeShift": null,
              "title": "Network",
              "tooltip": {
                "shared": true,
                "sort": 0,
                "value_type": "individual"
              },
              "type": "graph",
              "xaxis": {
                "buckets": null,
                "mode": "time",
                "name": null,
                "show": true,
                "values": []
              },
              "yaxes": [
                {
                  "format": "short",
                  "label": null,
                  "logBase": 1,
                  "max": null,
                  "min": null,
                  "show": true
                },
                {
                  "format": "short",
                  "label": null,
                  "logBase": 1,
                  "max": null,
                  "min": null,
                  "show": true
                }
              ]
            }
          ],
          "repeat": null,
          "repeatIteration": null,
          "repeatRowId": null,
          "showTitle": false,
          "title": "Dashboard Row",
          "titleSize": "h6"
        },
        {
          "collapse": false,
          "height": 250,
          "panels": [
            {
              "aliasColors": {},
              "bars": false,
              "dashLength": 10,
              "dashes": false,
              "datasource": "prometheus",
              "description": "Abnormally high snapshot duration (snapshot_save_total_duration_seconds) indicates disk issues and might cause the cluster to be unstable.",
              "fill": 1,
              "id": 9,
              "legend": {
                "avg": false,
                "current": false,
                "max": false,
                "min": false,
                "show": true,
                "total": false,
                "values": false
              },
              "lines": true,
              "linewidth": 1,
              "links": [],
              "nullPointMode": "null",
              "percentage": false,
              "pointradius": 5,
              "points": false,
              "renderer": "flot",
              "seriesOverrides": [],
              "spaceLength": 10,
              "span": 12,
              "stack": false,
              "steppedLine": false,
              "targets": [
                {
                  "expr": "sum(rate(etcd_debugging_snap_save_total_duration_seconds_sum[2m]))",
                  "format": "time_series",
                  "intervalFactor": 2,
                  "legendFormat": "The total latency distributions of save called by snapshot",
                  "refId": "A",
                  "step": 30
                }
              ],
              "thresholds": [],
              "timeFrom": null,
              "timeShift": null,
              "title": "Snapshot duration",
              "tooltip": {
                "shared": true,
                "sort": 0,
                "value_type": "individual"
              },
              "type": "graph",
              "xaxis": {
                "buckets": null,
                "mode": "time",
                "name": null,
                "show": true,
                "values": []
              },
              "yaxes": [
                {
                  "format": "short",
                  "label": null,
                  "logBase": 1,
                  "max": null,
                  "min": null,
                  "show": true
                },
                {
                  "format": "short",
                  "label": null,
                  "logBase": 1,
                  "max": null,
                  "min": null,
                  "show": true
                }
              ]
            }
          ],
          "repeat": null,
          "repeatIteration": null,
          "repeatRowId": null,
          "showTitle": false,
          "title": "Dashboard Row",
          "titleSize": "h6"
        }
      ],
      "schemaVersion": 14,
      "style": "dark",
      "tags": [],
      "templating": {
        "list": []
      },
      "time": {
        "from": "now-6h",
        "to": "now"
      },
      "timepicker": {
        "refresh_intervals": [
          "5s",
          "10s",
          "30s",
          "1m",
          "5m",
          "15m",
          "30m",
          "1h",
          "2h",
          "1d"
        ],
        "time_options": [
          "5m",
          "15m",
          "1h",
          "6h",
          "12h",
          "24h",
          "2d",
          "7d",
          "30d"
        ]
      },
      "timezone": "browser",
      "title": "Etcd by Prometheus",
      "version": 2,
      "description": "Etcd Dashboard for Prometheus metrics scraper"
    }
{{- end }}
