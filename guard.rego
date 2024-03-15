package simple

default allow = "nothing"
default allowIds = []

commonIdsToAllow {
  input.operation == "read"
}
commonIdsToAllow {
  input.operation == "write"
}
commonIdsToAllow {
  input.operation == "delete"
}

allow = allowRes {
  startswith(input.token, "Bearer ")
  rawToken := substring(input.token, count("Bearer "), -1)
  [_, tokenPayload, _] := io.jwt.decode(rawToken)
  data.users[tokenPayload.username]
  allowRes := 
}

# allowIds = allowIdsRes {
#   allow == "nothing"
#   allowIdsRes := []
# }

# allowIds = allowIdsRes {
#   allow == "everything"
#   allowIdsRes := input.ids
# }

# allowIds = allowIdsRes {
#   allow == "something"
#   allowIdsRes := input.ids
# }
