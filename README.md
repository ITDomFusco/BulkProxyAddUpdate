# BulkProxyAddUpdate

Lo script in allegato viene utilizzato per la modifica massiva dei ProxyAddress per Azure Active Directory e Office365. Propedeutico per l'esecuzione è la crezione di un file csv con il seguente formato:

Username,NewAlias
utente1,nuovo_alias1
utente2,nuovo_alias2
utente3,nuovo_alias3

Nel caso vi fossero più alias da inserire il formato è il seguente:

Username,NewAlias1,NewAlias2,NewAlias3
utente1,nuovo_alias1a,nuovo_alias1b,nuovo_alias1c
utente2,nuovo_alias2a,nuovo_alias2b,nuovo_alias2c
utente3,nuovo_alias3a,nuovo_alias3b,nuovo_alias3c

Il file Csv sarà da salvare all'interno della cartella C:\ e battezzato con "Utenti.csv". Qualora si voglia battezzare il file in nome diverso bisognerà modificare la riga 2 dello script inserendo nome e percorso scelto. 
