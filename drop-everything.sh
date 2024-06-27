#!/bin/bash

DB_USER="dev"
DB_PASS="diogo2012"

# Lista de bancos de dados para limpar
declare -a databases=("banco_deles" "banco_nosso" "banco_merged")

# Função para remover todas as tabelas de um banco de dados
drop_tables() {
    local db_name=$1
    echo "Limpando o banco de dados: $db_name"

    # Comando SQL para gerar DROP TABLE para todas as tabelas
    local sql="SELECT CONCAT('DROP TABLE IF EXISTS \`', table_name, '\`;') FROM information_schema.tables WHERE table_schema = '$db_name';"

    # Executa o DROP TABLE para cada tabela
    mysql -u"$DB_USER" -p"$DB_PASS" -D"$db_name" -e "$sql" | grep 'DROP TABLE' | mysql -u"$DB_USER" -p"$DB_PASS" -D"$db_name"
}

# Itera sobre a lista de bancos de dados e limpa cada um
for db in "${databases[@]}"; do
    drop_tables "$db"
done

echo "Todos os bancos de dados foram limpos."