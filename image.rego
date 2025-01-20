package main


deny[msg] {
        input[i].Cmd == "from"
        val := split(input[i].Value[0], ":")
        contains(val[1], "latest")
        msg = sprintf("unallowed image With Tag Latest %s", [val])
}

secrets_env = [
    "passwd",
    "password",
    "pass",
    "secret",
    "key",
    "access",
    "api_key",
    "apikey",
    "token",
    "tkn"
]

deny[msg] {
    input[i].Cmd == "env"
    val := input[i].Value
    contains(lower(val[_]), secrets_env[_])
    msg = sprintf("Line %d: Potential secret in ENV key found: %s", [i, val])
}


deny[msg] {
    input[i].Cmd == "add"
    msg = sprintf("Line %d: Use COPY instead of ADD", [i])
}

any_user {
    input[i].Cmd == "user"
}

deny[msg] {
    not any_user
    msg = "Do not run as root, use USER instead"
}
