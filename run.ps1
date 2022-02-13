if($(docker volume ls -q -f name="hedgedoc_database")){
    docker-compose up -d database
    Write-Output exist volume
    docker-compose exec database pg_dump hedgedoc -Fc -U hedgedoc -f /var/lib/postgresql/backups/backup_$(Get-Date -UFormat "%Y%m%d_%H%M").dump
} else {
    Write-Output not exist volume
    docker-compose up -d database
    Start-Sleep -s 2
    (Get-ChildItem .\backups\ | Sort-Object -Descending)[0].Name
    docker exec -i $(docker-compose ps -q database) pg_restore -d hedgedoc -U hedgedoc /var/lib/postgresql/backups/$((Get-ChildItem .\backups\ | Sort-Object -Descending)[0].Name)
}
docker-compose up -d 
docker-compose logs
Start-Process http://localhost:3000
Pause