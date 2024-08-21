# Carica il modulo Active Directory
Import-Module ActiveDirectory

# Imposta il percorso del file CSV
$csvFilePath = "C:\percorso\del\tuo\file\utenti.csv"

# Leggi i dati dal file CSV
$userData = Import-Csv $csvFilePath

# Itera su ogni riga del file CSV
foreach ($user in $userData)
{
	# Ottieni l'utente corrente da Active Directory
	$currentUser = Get-ADUser -Filter { SamAccountName -eq $user.Username }
	
	# Verifica se l'utente esiste
	if ($currentUser)
	{
		# Aggiungi l'alias all'elenco degli alias esistenti
		$currentAliases = $currentUser.EmailAddresses -split ","
		$newAliases = $currentAliases + $user.NewAlias
		
		# Aggiorna gli alias dell'utente in Active Directory
		Set-ADUser -Identity $user.Username -EmailAddress $newAliases -Add @{ proxyAddresses = $newAliases }
		
		Write-Host "Alias aggiunti per l'utente $($user.Username)"
	}
	else
	{
		Write-Host "Utente non trovato: $($user.Username)"
	}
}


