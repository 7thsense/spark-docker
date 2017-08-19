VERSION:=2.1.1-13

.PHONY: default
default:
	docker build .

publish: default
	docker build -t 7thsense/spark:${VERSION} -t 7thsense/spark:latest .
	docker push 7thsense/spark:${VERSION}
	docker push 7thsense/spark:latest
