build:
	- docker build --no-cache --pull . --build-arg julia_version=1.0 -t johnnychen94/juliabook:1.0
	- docker build --no-cache --pull . --build-arg julia_version=1.1 -t johnnychen94/juliabook:1.1
	- docker build --no-cache --pull . --build-arg julia_version=1.2 -t johnnychen94/juliabook:1.2
	- docker build --no-cache --pull . --build-arg julia_version=1.3 -t johnnychen94/juliabook:1.3
	- docker build --no-cache --pull . --build-arg julia_version=1.3 -t johnnychen94/juliabook:1.4
	- docker build --no-cache --pull . -t johnnychen94/juliabook:stable

deploy:
	docker push johnnychen94/juliabook:1.0
	docker push johnnychen94/juliabook:1.1
	docker push johnnychen94/juliabook:1.2
	docker push johnnychen94/juliabook:1.3
	docker push johnnychen94/juliabook:1.4
	docker push johnnychen94/juliabook:stable
