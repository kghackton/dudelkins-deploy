up: pull start-db apply-db-migrations
	docker-compose up -d

pull:
	docker-compose pull

start-db:
	docker-compose up -d postgres && sleep 8

apply-db-migrations:
	./migrate.exe -database postgresql://root:qwerty@localhost:5432/anomalius?sslmode=disable -path ./migrations up
