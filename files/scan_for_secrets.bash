function scan_for_secrets() {

  if [[ -z "$file" ]]; then
    echo "Usage: scan_for_secrets <file>"
    return 1
  fi

  if [[ ! -f "$file" ]]; then
    echo "Error: File '$file' not found."
    return 1
  fi

  # Define patterns to search for (add/modify as needed)
  local patterns=(
    "API_KEY=[a-zA-Z0-9_-]{20,}"
    "SECRET_KEY=[a-zA-Z0-9_-]{20,}"
    "PASSWORD=[a-zA-Z0-9_-]{8,}"
    "AWS_ACCESS_KEY_ID=[A-Z0-9]{20}"
    "AWS_SECRET_ACCESS_KEY=[A-Za-z0-9+/]{40}"
    "ssh-rsa [A-Za-z0-9+/=]{20,}"
    "ssh-ed25519 [A-Za-z0-9+/=]{20,}"
    "-----BEGIN RSA PRIVATE KEY-----"
    "-----BEGIN PGP PRIVATE KEY BLOCK-----"
    "-----BEGIN OPENSSH PRIVATE KEY-----"
    "Bearer [A-Za-z0-9._-]{20,}"
    "Authorization: Basic [A-Za-z0-9+/=]{20,}"
    "Authorization: Token [A-Za-z0-9]{20,}"
    "[a-zA-Z0-9_-]+:[a-zA-Z0-9_-]+" #look for username:password type strings.
    "PGPASSWORD=[a-zA-Z0-9_-]{8,}" # postgres password
    "DATABASE_URL=postgres://[a-zA-Z0-9_-]+:[a-zA-Z0-9_-]+@" # postgres database url, catches username and password.
    "MONGO_URI=mongodb://[a-zA-Z0-9_-]+:[a-zA-Z0-9_-]+@" #mongodb uri, catches username and password
    "password[[:space:]]*[:=][[:space:]]*[\"']?[^\"']*[\"']?"  # Basic password pattern
    "secret[[:space:]]*[:=][[:space:]]*[\"']?[^\"']*[\"']?"   # Secret pattern
    "key[[:space:]]*[:=][[:space:]]*[\"']?[^\"']*[\"']?"      # Key pattern
    "AWS_ACCESS_KEY_ID[[:space:]]*[:=][[:space:]]*[\"']?[A-Z0-9]*[\"']?" # AWS Access Key ID
    "AWS_SECRET_ACCESS_KEY[[:space:]]*[:=][[:space:]]*[\"']?[a-zA-Z0-9/+=]*[\"']?" # AWS Secret Access Key
    "api_key[[:space:]]*[:=][[:space:]]*[\"']?[^\"']*[\"']?" # API Key pattern
    "database_url[[:space:]]*[:=][[:space:]]*[\"']?[^\"']*[\"']?" # Database URL
    "connection_string[[:space:]]*[:=][[:space:]]*[\"']?[^\"']*[\"']?" # Connection String
    "private_key[[:space:]]*[:=][[:space:]]*[\"']?[^\"']*[\"']?" # Private Key
    "client_secret[[:space:]]*[:=][[:space:]]*[\"']?[^\"']*[\"']?" # Client Secret
    "oauth_token[[:space:]]*[:=][[:space:]]*[\"']?[^\"']*[\"']?" # OAuth Token
    "bearer_token[[:space:]]*[:=][[:space:]]*[\"']?[^\"']*[\"']?" # Bearer Token
  )

    # "export [A-Z_]+=[\"']?[A-Za-z0-9_\\-./+=@$%^&*()!~`?<>:;']+" # look for exported environment variables.
  local found=0

  for pattern in "${patterns[@]}"; do
    if grep -E "$pattern" "$file" > /dev/null; then
      found=1
      echo "Potential secret found in '$file' matching pattern: '$pattern'"
      grep -E "$pattern" "$file"
    fi
  done

  if [[ "$found" -eq 0 ]]; then
    echo "No potential secrets found in '$file'."
  fi

  return 0
}
function scan_for_secrets() {

  if [[ -z "$file" ]]; then
    echo "Usage: scan_for_secrets <file>"
    return 1
  fi

  if [[ ! -f "$file" ]]; then
    echo "Error: File '$file' not found."
    return 1
  fi

  # Define patterns to search for (add/modify as needed)
  local patterns=(
    "API_KEY=[a-zA-Z0-9_-]{20,}"
    "SECRET_KEY=[a-zA-Z0-9_-]{20,}"
    "PASSWORD=[a-zA-Z0-9_-]{8,}"
    "AWS_ACCESS_KEY_ID=[A-Z0-9]{20}"
    "AWS_SECRET_ACCESS_KEY=[A-Za-z0-9+/]{40}"
    "ssh-rsa [A-Za-z0-9+/=]{20,}"
    "ssh-ed25519 [A-Za-z0-9+/=]{20,}"
    "-----BEGIN RSA PRIVATE KEY-----"
    "-----BEGIN PGP PRIVATE KEY BLOCK-----"
    "-----BEGIN OPENSSH PRIVATE KEY-----"
    "Bearer [A-Za-z0-9._-]{20,}"
    "Authorization: Basic [A-Za-z0-9+/=]{20,}"
    "Authorization: Token [A-Za-z0-9]{20,}"
    "[a-zA-Z0-9_-]+:[a-zA-Z0-9_-]+" #look for username:password type strings.
    "PGPASSWORD=[a-zA-Z0-9_-]{8,}" # postgres password
    "DATABASE_URL=postgres://[a-zA-Z0-9_-]+:[a-zA-Z0-9_-]+@" # postgres database url, catches username and password.
    "MONGO_URI=mongodb://[a-zA-Z0-9_-]+:[a-zA-Z0-9_-]+@" #mongodb uri, catches username and password
    "password[[:space:]]*[:=][[:space:]]*[\"']?[^\"']*[\"']?"  # Basic password pattern
    "secret[[:space:]]*[:=][[:space:]]*[\"']?[^\"']*[\"']?"   # Secret pattern
    "key[[:space:]]*[:=][[:space:]]*[\"']?[^\"']*[\"']?"      # Key pattern
    "AWS_ACCESS_KEY_ID[[:space:]]*[:=][[:space:]]*[\"']?[A-Z0-9]*[\"']?" # AWS Access Key ID
    "AWS_SECRET_ACCESS_KEY[[:space:]]*[:=][[:space:]]*[\"']?[a-zA-Z0-9/+=]*[\"']?" # AWS Secret Access Key
    "api_key[[:space:]]*[:=][[:space:]]*[\"']?[^\"']*[\"']?" # API Key pattern
    "database_url[[:space:]]*[:=][[:space:]]*[\"']?[^\"']*[\"']?" # Database URL
    "connection_string[[:space:]]*[:=][[:space:]]*[\"']?[^\"']*[\"']?" # Connection String
    "private_key[[:space:]]*[:=][[:space:]]*[\"']?[^\"']*[\"']?" # Private Key
    "client_secret[[:space:]]*[:=][[:space:]]*[\"']?[^\"']*[\"']?" # Client Secret
    "oauth_token[[:space:]]*[:=][[:space:]]*[\"']?[^\"']*[\"']?" # OAuth Token
    "bearer_token[[:space:]]*[:=][[:space:]]*[\"']?[^\"']*[\"']?" # Bearer Token
  )

    # "export [A-Z_]+=[\"']?[A-Za-z0-9_\\-./+=@$%^&*()!~`?<>:;']+" # look for exported environment variables.
  local found=0

  for pattern in "${patterns[@]}"; do
    if grep -E "$pattern" "$file" > /dev/null; then
      found=1
      echo "Potential secret found in '$file' matching pattern: '$pattern'"
      grep -E "$pattern" "$file"
    fi
  done

  if [[ "$found" -eq 0 ]]; then
    echo "No potential secrets found in '$file'."
  fi

  return 0
}
function scan_for_secrets() {

  if [[ -z "$file" ]]; then
    echo "Usage: scan_for_secrets <file>"
    return 1
  fi

  if [[ ! -f "$file" ]]; then
    echo "Error: File '$file' not found."
    return 1
  fi

  # Define patterns to search for (add/modify as needed)
  local patterns=(
    "API_KEY=[a-zA-Z0-9_-]{20,}"
    "SECRET_KEY=[a-zA-Z0-9_-]{20,}"
    "PASSWORD=[a-zA-Z0-9_-]{8,}"
    "AWS_ACCESS_KEY_ID=[A-Z0-9]{20}"
    "AWS_SECRET_ACCESS_KEY=[A-Za-z0-9+/]{40}"
    "ssh-rsa [A-Za-z0-9+/=]{20,}"
    "ssh-ed25519 [A-Za-z0-9+/=]{20,}"
    "-----BEGIN RSA PRIVATE KEY-----"
    "-----BEGIN PGP PRIVATE KEY BLOCK-----"
    "-----BEGIN OPENSSH PRIVATE KEY-----"
    "Bearer [A-Za-z0-9._-]{20,}"
    "Authorization: Basic [A-Za-z0-9+/=]{20,}"
    "Authorization: Token [A-Za-z0-9]{20,}"
    "[a-zA-Z0-9_-]+:[a-zA-Z0-9_-]+" #look for username:password type strings.
    "PGPASSWORD=[a-zA-Z0-9_-]{8,}" # postgres password
    "DATABASE_URL=postgres://[a-zA-Z0-9_-]+:[a-zA-Z0-9_-]+@" # postgres database url, catches username and password.
    "MONGO_URI=mongodb://[a-zA-Z0-9_-]+:[a-zA-Z0-9_-]+@" #mongodb uri, catches username and password
    "password[[:space:]]*[:=][[:space:]]*[\"']?[^\"']*[\"']?"  # Basic password pattern
    "secret[[:space:]]*[:=][[:space:]]*[\"']?[^\"']*[\"']?"   # Secret pattern
    "key[[:space:]]*[:=][[:space:]]*[\"']?[^\"']*[\"']?"      # Key pattern
    "AWS_ACCESS_KEY_ID[[:space:]]*[:=][[:space:]]*[\"']?[A-Z0-9]*[\"']?" # AWS Access Key ID
    "AWS_SECRET_ACCESS_KEY[[:space:]]*[:=][[:space:]]*[\"']?[a-zA-Z0-9/+=]*[\"']?" # AWS Secret Access Key
    "api_key[[:space:]]*[:=][[:space:]]*[\"']?[^\"']*[\"']?" # API Key pattern
    "database_url[[:space:]]*[:=][[:space:]]*[\"']?[^\"']*[\"']?" # Database URL
    "connection_string[[:space:]]*[:=][[:space:]]*[\"']?[^\"']*[\"']?" # Connection String
    "private_key[[:space:]]*[:=][[:space:]]*[\"']?[^\"']*[\"']?" # Private Key
    "client_secret[[:space:]]*[:=][[:space:]]*[\"']?[^\"']*[\"']?" # Client Secret
    "oauth_token[[:space:]]*[:=][[:space:]]*[\"']?[^\"']*[\"']?" # OAuth Token
    "bearer_token[[:space:]]*[:=][[:space:]]*[\"']?[^\"']*[\"']?" # Bearer Token
  )

    # "export [A-Z_]+=[\"']?[A-Za-z0-9_\\-./+=@$%^&*()!~`?<>:;']+" # look for exported environment variables.
  local found=0

  for pattern in "${patterns[@]}"; do
    if grep -E "$pattern" "$file" > /dev/null; then
      found=1
      echo "Potential secret found in '$file' matching pattern: '$pattern'"
      grep -E "$pattern" "$file"
    fi
  done

  if [[ "$found" -eq 0 ]]; then
    echo "No potential secrets found in '$file'."
  fi

  return 0
}
function scan_for_secrets() {

  if [[ -z "$file" ]]; then
    echo "Usage: scan_for_secrets <file>"
    return 1
  fi

  if [[ ! -f "$file" ]]; then
    echo "Error: File '$file' not found."
    return 1
  fi

  # Define patterns to search for (add/modify as needed)
  local patterns=(
    "API_KEY=[a-zA-Z0-9_-]{20,}"
    "SECRET_KEY=[a-zA-Z0-9_-]{20,}"
    "PASSWORD=[a-zA-Z0-9_-]{8,}"
    "AWS_ACCESS_KEY_ID=[A-Z0-9]{20}"
    "AWS_SECRET_ACCESS_KEY=[A-Za-z0-9+/]{40}"
    "ssh-rsa [A-Za-z0-9+/=]{20,}"
    "ssh-ed25519 [A-Za-z0-9+/=]{20,}"
    "-----BEGIN RSA PRIVATE KEY-----"
    "-----BEGIN PGP PRIVATE KEY BLOCK-----"
    "-----BEGIN OPENSSH PRIVATE KEY-----"
    "Bearer [A-Za-z0-9._-]{20,}"
    "Authorization: Basic [A-Za-z0-9+/=]{20,}"
    "Authorization: Token [A-Za-z0-9]{20,}"
    "[a-zA-Z0-9_-]+:[a-zA-Z0-9_-]+" #look for username:password type strings.
    "PGPASSWORD=[a-zA-Z0-9_-]{8,}" # postgres password
    "DATABASE_URL=postgres://[a-zA-Z0-9_-]+:[a-zA-Z0-9_-]+@" # postgres database url, catches username and password.
    "MONGO_URI=mongodb://[a-zA-Z0-9_-]+:[a-zA-Z0-9_-]+@" #mongodb uri, catches username and password
    "password[[:space:]]*[:=][[:space:]]*[\"']?[^\"']*[\"']?"  # Basic password pattern
    "secret[[:space:]]*[:=][[:space:]]*[\"']?[^\"']*[\"']?"   # Secret pattern
    "key[[:space:]]*[:=][[:space:]]*[\"']?[^\"']*[\"']?"      # Key pattern
    "AWS_ACCESS_KEY_ID[[:space:]]*[:=][[:space:]]*[\"']?[A-Z0-9]*[\"']?" # AWS Access Key ID
    "AWS_SECRET_ACCESS_KEY[[:space:]]*[:=][[:space:]]*[\"']?[a-zA-Z0-9/+=]*[\"']?" # AWS Secret Access Key
    "api_key[[:space:]]*[:=][[:space:]]*[\"']?[^\"']*[\"']?" # API Key pattern
    "database_url[[:space:]]*[:=][[:space:]]*[\"']?[^\"']*[\"']?" # Database URL
    "connection_string[[:space:]]*[:=][[:space:]]*[\"']?[^\"']*[\"']?" # Connection String
    "private_key[[:space:]]*[:=][[:space:]]*[\"']?[^\"']*[\"']?" # Private Key
    "client_secret[[:space:]]*[:=][[:space:]]*[\"']?[^\"']*[\"']?" # Client Secret
    "oauth_token[[:space:]]*[:=][[:space:]]*[\"']?[^\"']*[\"']?" # OAuth Token
    "bearer_token[[:space:]]*[:=][[:space:]]*[\"']?[^\"']*[\"']?" # Bearer Token
  )

    # "export [A-Z_]+=[\"']?[A-Za-z0-9_\\-./+=@$%^&*()!~`?<>:;']+" # look for exported environment variables.
  local found=0

  for pattern in "${patterns[@]}"; do
    if grep -E "$pattern" "$file" > /dev/null; then
      found=1
      echo "Potential secret found in '$file' matching pattern: '$pattern'"
      grep -E "$pattern" "$file"
    fi
  done

  if [[ "$found" -eq 0 ]]; then
    echo "No potential secrets found in '$file'."
  fi

  return 0
}
function scan_for_secrets() {

  if [[ -z "$file" ]]; then
    echo "Usage: scan_for_secrets <file>"
    return 1
  fi

  if [[ ! -f "$file" ]]; then
    echo "Error: File '$file' not found."
    return 1
  fi

  # Define patterns to search for (add/modify as needed)
  local patterns=(
    "API_KEY=[a-zA-Z0-9_-]{20,}"
    "SECRET_KEY=[a-zA-Z0-9_-]{20,}"
    "PASSWORD=[a-zA-Z0-9_-]{8,}"
    "AWS_ACCESS_KEY_ID=[A-Z0-9]{20}"
    "AWS_SECRET_ACCESS_KEY=[A-Za-z0-9+/]{40}"
    "ssh-rsa [A-Za-z0-9+/=]{20,}"
    "ssh-ed25519 [A-Za-z0-9+/=]{20,}"
    "-----BEGIN RSA PRIVATE KEY-----"
    "-----BEGIN PGP PRIVATE KEY BLOCK-----"
    "-----BEGIN OPENSSH PRIVATE KEY-----"
    "Bearer [A-Za-z0-9._-]{20,}"
    "Authorization: Basic [A-Za-z0-9+/=]{20,}"
    "Authorization: Token [A-Za-z0-9]{20,}"
    "[a-zA-Z0-9_-]+:[a-zA-Z0-9_-]+" #look for username:password type strings.
    "PGPASSWORD=[a-zA-Z0-9_-]{8,}" # postgres password
    "DATABASE_URL=postgres://[a-zA-Z0-9_-]+:[a-zA-Z0-9_-]+@" # postgres database url, catches username and password.
    "MONGO_URI=mongodb://[a-zA-Z0-9_-]+:[a-zA-Z0-9_-]+@" #mongodb uri, catches username and password
    "password[[:space:]]*[:=][[:space:]]*[\"']?[^\"']*[\"']?"  # Basic password pattern
    "secret[[:space:]]*[:=][[:space:]]*[\"']?[^\"']*[\"']?"   # Secret pattern
    "key[[:space:]]*[:=][[:space:]]*[\"']?[^\"']*[\"']?"      # Key pattern
    "AWS_ACCESS_KEY_ID[[:space:]]*[:=][[:space:]]*[\"']?[A-Z0-9]*[\"']?" # AWS Access Key ID
    "AWS_SECRET_ACCESS_KEY[[:space:]]*[:=][[:space:]]*[\"']?[a-zA-Z0-9/+=]*[\"']?" # AWS Secret Access Key
    "api_key[[:space:]]*[:=][[:space:]]*[\"']?[^\"']*[\"']?" # API Key pattern
    "database_url[[:space:]]*[:=][[:space:]]*[\"']?[^\"']*[\"']?" # Database URL
    "connection_string[[:space:]]*[:=][[:space:]]*[\"']?[^\"']*[\"']?" # Connection String
    "private_key[[:space:]]*[:=][[:space:]]*[\"']?[^\"']*[\"']?" # Private Key
    "client_secret[[:space:]]*[:=][[:space:]]*[\"']?[^\"']*[\"']?" # Client Secret
    "oauth_token[[:space:]]*[:=][[:space:]]*[\"']?[^\"']*[\"']?" # OAuth Token
    "bearer_token[[:space:]]*[:=][[:space:]]*[\"']?[^\"']*[\"']?" # Bearer Token
  )

    # "export [A-Z_]+=[\"']?[A-Za-z0-9_\\-./+=@$%^&*()!~`?<>:;']+" # look for exported environment variables.
  local found=0

  for pattern in "${patterns[@]}"; do
    if grep -E "$pattern" "$file" > /dev/null; then
      found=1
      echo "Potential secret found in '$file' matching pattern: '$pattern'"
      grep -E "$pattern" "$file"
    fi
  done

  if [[ "$found" -eq 0 ]]; then
    echo "No potential secrets found in '$file'."
  fi

  return 0
}
function scan_for_secrets() {

  if [[ -z "$file" ]]; then
    echo "Usage: scan_for_secrets <file>"
    return 1
  fi

  if [[ ! -f "$file" ]]; then
    echo "Error: File '$file' not found."
    return 1
  fi

  # Define patterns to search for (add/modify as needed)
  local patterns=(
    "API_KEY=[a-zA-Z0-9_-]{20,}"
    "SECRET_KEY=[a-zA-Z0-9_-]{20,}"
    "PASSWORD=[a-zA-Z0-9_-]{8,}"
    "AWS_ACCESS_KEY_ID=[A-Z0-9]{20}"
    "AWS_SECRET_ACCESS_KEY=[A-Za-z0-9+/]{40}"
    "ssh-rsa [A-Za-z0-9+/=]{20,}"
    "ssh-ed25519 [A-Za-z0-9+/=]{20,}"
    "-----BEGIN RSA PRIVATE KEY-----"
    "-----BEGIN PGP PRIVATE KEY BLOCK-----"
    "-----BEGIN OPENSSH PRIVATE KEY-----"
    "Bearer [A-Za-z0-9._-]{20,}"
    "Authorization: Basic [A-Za-z0-9+/=]{20,}"
    "Authorization: Token [A-Za-z0-9]{20,}"
    "[a-zA-Z0-9_-]+:[a-zA-Z0-9_-]+" #look for username:password type strings.
    "PGPASSWORD=[a-zA-Z0-9_-]{8,}" # postgres password
    "DATABASE_URL=postgres://[a-zA-Z0-9_-]+:[a-zA-Z0-9_-]+@" # postgres database url, catches username and password.
    "MONGO_URI=mongodb://[a-zA-Z0-9_-]+:[a-zA-Z0-9_-]+@" #mongodb uri, catches username and password
    "password[[:space:]]*[:=][[:space:]]*[\"']?[^\"']*[\"']?"  # Basic password pattern
    "secret[[:space:]]*[:=][[:space:]]*[\"']?[^\"']*[\"']?"   # Secret pattern
    "key[[:space:]]*[:=][[:space:]]*[\"']?[^\"']*[\"']?"      # Key pattern
    "AWS_ACCESS_KEY_ID[[:space:]]*[:=][[:space:]]*[\"']?[A-Z0-9]*[\"']?" # AWS Access Key ID
    "AWS_SECRET_ACCESS_KEY[[:space:]]*[:=][[:space:]]*[\"']?[a-zA-Z0-9/+=]*[\"']?" # AWS Secret Access Key
    "api_key[[:space:]]*[:=][[:space:]]*[\"']?[^\"']*[\"']?" # API Key pattern
    "database_url[[:space:]]*[:=][[:space:]]*[\"']?[^\"']*[\"']?" # Database URL
    "connection_string[[:space:]]*[:=][[:space:]]*[\"']?[^\"']*[\"']?" # Connection String
    "private_key[[:space:]]*[:=][[:space:]]*[\"']?[^\"']*[\"']?" # Private Key
    "client_secret[[:space:]]*[:=][[:space:]]*[\"']?[^\"']*[\"']?" # Client Secret
    "oauth_token[[:space:]]*[:=][[:space:]]*[\"']?[^\"']*[\"']?" # OAuth Token
    "bearer_token[[:space:]]*[:=][[:space:]]*[\"']?[^\"']*[\"']?" # Bearer Token
  )

    # "export [A-Z_]+=[\"']?[A-Za-z0-9_\\-./+=@$%^&*()!~`?<>:;']+" # look for exported environment variables.
  local found=0

  for pattern in "${patterns[@]}"; do
    if grep -E "$pattern" "$file" > /dev/null; then
      found=1
      echo "Potential secret found in '$file' matching pattern: '$pattern'"
      grep -E "$pattern" "$file"
    fi
  done

  if [[ "$found" -eq 0 ]]; then
    echo "No potential secrets found in '$file'."
  fi

  return 0
}
