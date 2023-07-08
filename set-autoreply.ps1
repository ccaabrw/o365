# Call connect-exchange (that script determines whether it needs to actually make a new connection)

# start date
$d1 = New-Object System.DateTime(2022,6,1,16,0,0)
$d1 = New-Object System.DateTime(2022,6,12,16,0,0)
$d1 = New-Object System.DateTime(2022,9,19,16,0,0)
$d1 = New-Object System.DateTime(2022,10,20,16,0,0)
$d1 = New-Object System.DateTime(2022,12,23,16,0,0)
$d1 = New-Object System.DateTime(2023,3,16,16,0,0)
$d1 = New-Object System.DateTime(2023,3,23,16,0,0)
$d1 = New-Object System.DateTime(2023,4,5,16,0,0)
$d1 = New-Object System.DateTime(2023,4,27,16,0,0)
$d1 = New-Object System.DateTime(2023,5,17,12,0,0)
$d1 = New-Object System.DateTime(2023,6,2,16,0,0)
$d1 = New-Object System.DateTime(2023,6,16,7,0,0)

# end date
# 06:00 for whole day holidays
# 00:00 just after a half day
$d2 = New-Object System.DateTime(2023,6,16,17,0,0)

# messages
$msg = "I am on leave until 13th June"
$msg = "I am on a training course until 17th June"
$msg = "I am on leave until 21st September"
$msg = "I am on leave until 25th October"
$msg = "I am on leave until 9th January"
$msg = "I am on leave until 21st March"
$msg = "I am on leave until 27th March"
$msg = "I am on leave until 17th April"
$msg = "I am on leave until 9th May"
$msg = "I am on leave this afternoon"
$msg = "I am on leave until 12th June"
$msg = "I am on leave for today only"

Set-MailboxAutoReplyConfiguration -Identity ccaabrw -AutoReplyState scheduled `
  -StartTime $d1 -EndTime $d2 `
  -InternalMessage $msg -ExternalMessage $null

# Use 4PM start time - since Cloud Shell is in UTC
#
# Parameterise this properly
# Add a whatif and verbose option
# Response is derived from expression according to end date
# Handle local time zone
