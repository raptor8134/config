# execute from the cloned config dir
for x in $@; do
	rm -rf ~/.config/$x
	ln -s $(pwd)/$x ~/.config/$x
done
