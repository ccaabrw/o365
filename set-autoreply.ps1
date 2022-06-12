# Call connect-exchange (that script determines whether it needs to actually make a new connection)

# start date
$d1 = New-Object System.DateTime(2022,6,1,16,0,0)
$d1 = New-Object System.DateTime(2022,6,12,16,0,0)

# end date
$d2 = New-Object System.DateTime(2022,6,17,6,0,0)

# messages
$msg = "I am on leave until 13th June"
$msg = "I am on a training course until 17th June"

Set-MailboxAutoReplyConfiguration -Identity ccaabrw -AutoReplyState scheduled `
  -StartTime $d1 -EndTime $d2 `
  -InternalMessage $msg -ExternalMessage $null

# Use 4PM start time - since Cloud Shell is in UTC
#
# Parameterise this properly
# Add a whatif and verbose option
# Response is derived from expression according to end date
# Handle local time zone
