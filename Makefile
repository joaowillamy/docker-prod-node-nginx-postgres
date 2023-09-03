up:
	docker-compose -f docker-compose.yml up -d --build 

down:
	docker-compose -f docker-compose.yml down 

up_prod:
	docker-compose -f docker-compose.prod.yml up -d --build 

down_prod:
	docker-compose -f docker-compose.prod.yml down 

clean:
	# docker stop $(docker ps -a -q)
	# docker rm $(docker ps -a -q) -f
	# docker image rm $(docker images -a -q) -f
	# docker volume rm $(docker volume ls -q) -f
	# docker network rm $(docker network ls -q) -f
	docker system prune -f
	docker system prune --volumes -f
	docker volume prune -f
	docker network prune -f
	docker container prune -f
	docker image prune -f

# make log APP=postgres
log:
	docker-compose logs $(APP)

itnode:
	docker exec -it nodeserver /bin/sh 

itpostgres:
	docker exec -it postgres bash