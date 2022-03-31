include .env.dev
cur_dir:=$(shell pwd)
psql:
	docker run -d -e POSTGRES_USER=${DATABASE_USER} -e POSTGRES_PASSWORD=${DATABASE_PASS} --name=postgres -v ${cur_dir}/data:/var/lib/postgresql/data postgres

stop:
	docker container stop postgres

clean:
	docker container stop postgres
	docker container rm postgres

