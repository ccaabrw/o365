# Call connect-exchange (that script determines whether it needs to actually make a new connection)

# start date
$d1 = New-Object System.DateTime(2022,6,1,16,0,0)

# end date
$d2 = New-Object System.DateTime(2022,6,13,6,0,0)

Set-MailboxAutoReplyConfiguration -Identity ccaabrw -AutoReplyState scheduled `
  -StartTime $d1 -EndTime $d2 `
  -InternalMessage "I am on leave until 13th June" -ExternalMessage $null

# Use 4PM start time (is it UTC?) - also seems to take time to effect
#
# Parameterise this properly
# Add a whatif and verbose option
# Response is derived from expression according to end date
