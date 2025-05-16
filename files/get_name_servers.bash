function get_name_servers() {

  # Check if a domain is provided
  if [ -z "$domain" ]; then
    echo "Error: Please provide a domain name."
    return 1 # Return an error code
  fi

  # Use 'dig' command to query for name server (NS) records
  dig_output=$(dig +short NS "$domain")

  # Check if the 'dig' command was successful
  if [ $? -ne 0 ]; then
    echo "Error: Failed to retrieve name server information for $domain."
    return 1 # Return an error code
  fi

  # Print the name servers
  if [ -z "$dig_output" ]; then
    echo "No name server records found for $domain"
    return 1
   else
    echo "Name servers for $domain:"
    echo "$dig_output"
  fi
  return 0 # Return success code
}
