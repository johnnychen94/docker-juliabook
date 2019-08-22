build:
	docker build --no-cache --pull . --build-arg julia_version=1.2.0 -t johnnychen94/juliabook:stable
	docker build --no-cache --pull . --build-arg julia_version=1.0.4 -t johnnychen94/juliabook:1.0
	docker build --no-cache --pull . --build-arg julia_version=1.1.1 -t johnnychen94/juliabook:1.1
	docker build --no-cache --pull . --build-arg julia_version=1.2.0 -t johnnychen94/juliabook:1.2
	docker build --no-cache --pull . --build-arg julia_version=1.3.0-rc1 -t johnnychen94/juliabook:1.3

deploy:
	docker push johnnychen94/juliabook:stable
	docker push johnnychen94/juliabook:1.0
	docker push johnnychen94/juliabook:1.1
	docker push johnnychen94/juliabook:1.2
	docker push johnnychen94/juliabook:1.3
