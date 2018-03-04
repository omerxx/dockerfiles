# Grafana 

### Using Grafana
	* This compose file uses frafana with mysql for external DB so that the grafana image is stateless
	* In order to run, you must first launch the mysql, and *only* when it's ready, use grafana, so:
	```
	docker-compose up mysql
	
	# Wait for mysql to respond on its port

	docker compose up -d grafana
	```

	* You can commit the mysql container for later usage
