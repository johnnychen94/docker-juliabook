build:
	docker build --pull . -t johnnychen94/juliabook:stable
	docker build --pull . --build-arg julia_version=1.0 -t johnnychen94/juliabook:1.0
	docker build --pull . --build-arg julia_version=1.1 -t johnnychen94/juliabook:1.1
	docker build --pull . --build-arg julia_version=1.2 -t johnnychen94/juliabook:1.2

deploy:
	docker push johnnychen94/juliabook:stable
	docker push johnnychen94/juliabook:1.0
	docker push johnnychen94/juliabook:1.1
	docker push johnnychen94/juliabook:1.2
