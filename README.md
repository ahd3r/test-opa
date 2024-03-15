# Execute command
```bash
$ opa eval --data guard.rego --data data.json --input input.json 'data.simple.allow'
```

# Contracts
- Request
  ```json
  {
    "ids": [13,22,31],
    "operation": "delete",
    "entity": "user",
    "token": "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VybmFtZSI6ImFuZHkifQ.0ytG7fpdamgLjwqlRo_MmTCKg1tw4qYJnpJoH6o-nas"
  }
  ```
- Response
  ```json
  {
    "allow": "everything | nothing | something",
    "allowIds": [13]
  }
  ```
- Cache
  ```json
  {
    "metadata": {
      "roles": {
        "admin": ["read", "write", "delete"],
        "support": ["read", "write"],
        "user": ["read"]
      }
    },
    "users": {
      "andy": {
        "owner": [{"admin": [1, 4]},{"support": [2, 5]}, {"user": [3, 6]}]
      },
      "bob": {
        "owner": [{"admin": [12, 65]},{"support": [17, 13]}, {"user": [75, 71]}]
      }
    }
  }
  ```

# Debug
Use `print()`

# Test
```bash
$ opa test . -v
```