get-messagetrace -SenderAddress ccaabrw@ucl.ac.uk -StartDate $((get-date).AddDays(-10)) -EndDate $((get-date).AddDays(0)) | ogv

# Also recipientaddress among other parameters
