# Get list of mailing lists that user is member of

# To get results for other users, use ccaabrw-admin

param (
	$user = "ccaabrw"
)

$dn = (Get-Mailbox $user).DistinguishedName
$f = "Members -like '$dn'"

Get-DistributionGroup -ResultSize unlimited -Filter $f

# Compare:
#
# $d = Get-DistributionGroup -Filter $f
# 85
#
# $g = Get-UnifiedGroup -Filter $f     
# 45
#
# $a = Get-Group -Filter $f       
# 130
#

# Do we need to specify ResultSize?
# Can it be set as a default parameter?
