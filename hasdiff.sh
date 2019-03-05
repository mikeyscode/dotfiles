if ! git diff-index --quiet HEAD --; then
	echo "has diff"
fi
