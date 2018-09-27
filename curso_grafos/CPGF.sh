rm -rf /Users/gvanerven/neo4j-community-3.4.7/data/databases/cpgf.db;

/Users/gvanerven/neo4j-community-3.4.7/bin/neo4j-admin import --database cpgf.db --mode csv \
	--id-type string --ignore-duplicate-nodes \
        --nodes:Data ent_data.csv \
	--nodes:Orgao_superior ent_orgao_superior.csv \
	--nodes:Unidade_gestora ent_unidade_gestora.csv \
	--nodes ent_favorecido.csv \
	--nodes:Portador ent_portador.csv \
	--nodes:Orgao ent_orgao.csv \
	--nodes:Tx ent_transacoes.csv --relationships:FAVORECEU rel_favoreceu.csv \
        --relationships:REALIZOU_TX rel_realizou_tx.csv \
        --relationships:TEM_PORTADOR rel_tem_portador.csv \
        --relationships:POSSUI_UG rel_possui_ug.csv \
        --relationships:SUPERIOR_DE rel_superior_de.csv \
        --relationships:TRANSACAO_EM rel_transacao_em.csv

