# Git Cheat Sheet

## Delete Local Orphans

To clean branches that no longer exist on the remote, paste the following command in PowerShell -

```ps1
git branch -vv | ?{($_ -match ": gone\]") -and ($_ -notmatch "\*")} | %{$_.Trim().Split(" ")[0]} | %{git branch -D $_}
```

Or in bash -

```bash
git fetch --prune && git branch -vv | grep ': gone]' | awk '{print $1}' | xargs git branch -d
```
