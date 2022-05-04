# Get list of mailing lists that user is member of

param (
	$user = "ccaabrw"
)

$dn = (Get-Mailbox $user).DistinguishedName
$f = "Members -like ""$DN"""

Get-DistributionGroup -ResultSize unlimited -Filter $f
