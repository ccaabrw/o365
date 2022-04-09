# start date
$d1 = New-Object System.DateTime(2022,4,10,17,0,0)

# end date
$d2 = New-Object System.DateTime(2022,4,19,6,0,0)

Set-MailboxAutoReplyConfiguration -Identity ccaabrw -AutoReplyState scheduled -StartTime $d1 -EndTime $d2 -InternalMessage "I am on leave until 19th April" -ExternalMessage $null

# Parameterise this properly
# Add a whatif and verbose option
# Response is derived from expression according to end date
