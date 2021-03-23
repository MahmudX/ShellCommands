Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
function prompt {
    $p = Split-Path -leaf -path (Get-Location)
    "$p> "
}
