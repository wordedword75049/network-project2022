sudo apt-get -y install postgresql
sleep 2
docker-compose -f docker-compose.yml up -d postgresql
sleep 2
PGPASSWORD="12345" pg_restore -h localhost -p 5432 -U postgres -d drug-annotations --no-acl -F directory ./dump/prod_kb-drug-annotations/
sleep 2
docker-compose -f docker-compose.yml up -d
sleep 2
docker-compose -f docker-compose.yml ps
