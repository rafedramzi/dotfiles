update-all: update-ranger-scope-sh
update-ranger-scope-sh:
	curl -o ./ranger/.config/ranger/scope.sh https://raw.githubusercontent.com/ranger/ranger/master/ranger/data/scope.sh
