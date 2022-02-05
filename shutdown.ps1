if($(docker ps -f "name=hedgedoc" -q)){
    docker-compose exec database pg_dump hedgedoc -Fc -U hedgedoc -f /var/lib/postgresql/backups/backup_$(Get-Date -UFormat "%Y%m%d_%H%M").dump
    docker-compose down -v
} else {
    docker-compose up -d database
    docker-compose exec database pg_dump hedgedoc -Fc -U hedgedoc -f /var/lib/postgresql/backups/backup_$(Get-Date -UFormat "%Y%m%d_%H%M").dump
    docker-compose down -v
}


