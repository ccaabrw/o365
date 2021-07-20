# Simple functions
# Todo: make self-documenting and put in a module

# List all distribution groups of which a user is a member

function List-UserAllMemberOf {
	param ($u)

	if ($u -eq $null) {
		$u = Read-Host 'Userid  '
	}

	$dn = (Get-User $u).distinguishedname
	Get-Recipient -filter "Members -eq '$dn'"
}

# List all distribution groups of which a DL is a member

function List-DLAllMemberOf {
	param ($d)

	if ($d -eq $null) {
		$d = Read-Host 'Userid  '
	}

	$dn = (Get-DistributionGroup $d).distinguishedname
	Get-Recipient -filter "Members -eq '$dn'"
}

# ^ These two functions could be generalised to identify query parameter
#   and do appropriate lookup (or could maybe use Get-Recipient?)

