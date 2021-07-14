# Connect to O365
# https://docs.microsoft.com/en-us/powershell/exchange/connect-to-exchange-online-powershell?view=exchange-ps
#

# Check module installed

Import-Module ExchangeOnlineManagement
# MAy not be explicitly required

Connect-ExchangeOnline -UserPrincipalName 'ccaabrw@ucl.ac.uk'

#Connect-ExchangeOnline -UserPrincipalName 'ccaabrw-admin@live.ucl.ac.uk'

