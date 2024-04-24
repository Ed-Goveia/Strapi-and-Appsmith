#!/bin/bash

# Lista de nomes de imagens a serem paradas
NOMES_IMAGENS=("app:latest")

# Loop pelas imagens
for NOME_IMAGEM in "${NOMES_IMAGENS[@]}"; do
    # Obtém IDs dos contêineres com base na imagem
    CONTAINER_IDS=$(docker ps -a --filter ancestor=$NOME_IMAGEM --format "{{.ID}}")

    # Verifica se há contêineres em execução com base na imagem
    if [ -z "$CONTAINER_IDS" ]; then
        echo "Não há contêineres em execução com base na imagem $NOME_IMAGEM."
    else
        # Para os contêineres
        for CONTAINER_ID in $CONTAINER_IDS; do
            echo "Parando o contêiner $CONTAINER_ID..."
            docker stop $CONTAINER_ID
        done
        echo "Contêineres da imagem $NOME_IMAGEM parados com sucesso."
    fi
done

cd /opt/deploy_bac/deploy_bac/

git pull origin develop


# Caminho para o arquivo SQL do banco de dados
SQL_FILE="/opt/deploy_bac/deploy_bac/BancoDeDados/bac_homologacao.sql"

# Informações de conexão com o banco de dados
DB_HOST="10.243.144.200"
DB_USER="root"
DB_PORT="3307"
DB_PASS="12345"
DB_NAME="bac"

# Verificar se o arquivo SQL existe
if [ ! -f "$SQL_FILE" ]; then
    echo "Erro: O arquivo SQL '$SQL_FILE' não foi encontrado."
    exit 1
fi

# Atualizar o banco de dados
echo "Atualizando o banco de dados $DB_NAME..."
mysql -h $DB_HOST -P $DB_PORT -u $DB_USER -p$DB_PASS $DB_NAME < $SQL_FILE

# Verificar se a atualização foi bem-sucedida
if [ $? -eq 0 ]; then
    echo "Banco de dados atualizado com sucesso!"
else
    echo "Erro: Falha ao atualizar o banco de dados."
    exit 1
fi
cd /opt/deploy_bac/deploy_bac/backend/app1/

docker-compose build 
docker-compose up -d






