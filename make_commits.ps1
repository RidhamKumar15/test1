$Count = 5  # Number of commits you want today

for ($i = 1; $i -le $Count; $i++) {
    Add-Content "data.txt" "$(Get-Date) - Commit $i"
    git add data.txt
    git commit -m "Auto commit $i"
}

git push origin main
