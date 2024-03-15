package simple

test_common if {
  input_param := {"ids": [13,22,31],"operation": "delete","entity": "user","token": "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VybmFtZSI6ImFuZHkifQ.0ytG7fpdamgLjwqlRo_MmTCKg1tw4qYJnpJoH6o-nas"}
  data_param := {"metadata": {"roles": {"admin": ["read", "write", "delete"],"support": ["read", "write"],"user": ["read"]}},"users": {"andy": {"owner": [{"admin": [1, 4]},{"support": [2, 5]}, {"user": [3, 6]}]},"bob": {"owner": [{"admin": [12, 65]},{"support": [17, 13]}, {"user": [75, 71]}]}}}
  allow == "nothing" with input as input_param with data as data_param
}
