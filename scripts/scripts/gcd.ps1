
$current = git rev-parse --abbrev-ref HEAD
$target = $args[0] ?? "main"

git checkout $target
git pull origin $target
git branch -D $current
