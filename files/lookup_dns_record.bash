function lookup_dns_record() {

  # Use dig to query the DNS record, include error handling
  if ! dig "$domain" "$record_type" +short >/dev/null 2>&1; then
    echo "Error: Could not retrieve $record_type records for $domain"
    return 1 # Return a non-zero exit code to indicate failure
  fi

  # added the check to make sure the output is printed only if the command was successful
  dig "$domain" "$record_type" +short
}
