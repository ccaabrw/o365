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
$d1 = New-Object System.DateTime(2023,8,23,12,0,0)
$d1 = New-Object System.DateTime(2023,9,7,16,0,0)
$d1 = New-Object System.DateTime(2023,9,19,16,0,0)
$d1 = New-Object System.DateTime(2023,11,24,6,0,0)
$d1 = New-Object System.DateTime(2023,12,6,13,0,0)
$d1 = New-Object System.DateTime(2023,12,15,7,0,0)
$d1 = New-Object System.DateTime(2023,12,22,16,0,0)
$d1 = New-Object System.DateTime(2024,2,8,16,0,0)
$d1 = New-Object System.DateTime(2024,3,8,13,0,0)
$d1 = New-Object System.DateTime(2024,3,19,13,0,0)
$d1 = New-Object System.DateTime(2024,3,27,16,0,0)
$d1 = New-Object System.DateTime(2024,5,16,16,0,0)
$d1 = New-Object System.DateTime(2024,6,4,16,0,0)
$d1 = New-Object System.DateTime(2024,6,21,12,0,0)
$d1 = New-Object System.DateTime(2024,6,24,9,0,0)
$d1 = New-Object System.DateTime(2024,6,26,12,0,0)
$d1 = New-Object System.DateTime(2024,7,12,12,0,0)
$d1 = New-Object System.DateTime(2024,7,17,12,0,0)
$d1 = New-Object System.DateTime(2024,9,4,7,0,0)
$d1 = New-Object System.DateTime(2024,9,12,12,0,0)
$d1 = New-Object System.DateTime(2024,9,13,12,0,0)

# end date
# 06:00 for whole day holidays
# 00:00 just after a half day

$d2 = New-Object System.DateTime(2023,9,25,5,0,0)
$d2 = New-Object System.DateTime(2023,11,24,23,0,0)
$d2 = New-Object System.DateTime(2023,12,8,23,0,0)
$d2 = New-Object System.DateTime(2023,12,6,18,0,0)
$d2 = New-Object System.DateTime(2023,12,15,18,0,0)
$d2 = New-Object System.DateTime(2024,2,12,6,0,0)
$d2 = New-Object System.DateTime(2024,3,8,18,0,0)
$d2 = New-Object System.DateTime(2024,3,19,18,0,0)
$d2 = New-Object System.DateTime(2024,4,8,5,0,0)
$d2 = New-Object System.DateTime(2024,5,21,5,0,0)
$d2 = New-Object System.DateTime(2024,6,10,5,0,0)
$d2 = New-Object System.DateTime(2024,6,21,18,0,0)
$d2 = New-Object System.DateTime(2024,6,24,13,0,0)
$d2 = New-Object System.DateTime(2024,6,27,0,0,0)
$d2 = New-Object System.DateTime(2024,7,16,5,0,0)
$d2 = New-Object System.DateTime(2024,7,15,5,0,0)
$d2 = New-Object System.DateTime(2024,7,17,18,0,0)
$d2 = New-Object System.DateTime(2024,9,4,18,0,0)
$d2 = New-Object System.DateTime(2024,9,12,18,0,0)
$d2 = New-Object System.DateTime(2024,9,13,18,0,0)

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
$msg = "I am on leave until 12th June"
$msg = "I am on leave for today only"
$msg = "I am on leave until 11th September"
$msg = "I am on leave until 25th September"
$msg = "I am on leave today 24th November"
$msg = "I am on leave today 8th December"
$msg = "I am on leave this afternoon"
$msg = "I am on leave today 15th December"
$msg = "I am on leave until 8th January"
$msg = "I am on leave until 12th February"
$msg = "I am on leave this afternoon"
$msg = "I am on leave until 8th April"
$msg = "I am on leave until 22nd May"
$msg = "I am on leave until 10th June"
$msg = "I have a hospital appointment this morning"
$msg = "I am on leave this afternoon"
$msg = "I am on leave until 16th July"
$msg = "I am on leave until 15th July"
$msg = "I am on leave this afternoon"
$msg = "I am on leave for today"
$msg = "I am on leave this afternoon"

Set-MailboxAutoReplyConfiguration -Identity ccaabrw -AutoReplyState scheduled `
  -StartTime $d1 -EndTime $d2 `
  -InternalMessage $msg -ExternalMessage $null

# Use 4PM start time - since Cloud Shell is in UTC
#
# Parameterise this properly
# Detect time zone?
# Add a whatif and verbose option
# Response is derived from expression according to end date
# Handle local time zone
