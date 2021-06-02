homedirfile="$(ls -A home/)"
echo $homedirfile
for x in $homedirfile; do 
	rm -rf $HOME/$x
	echo Removed $HOME/$x
	ln $(pwd)/home/$x $HOME/$x
	echo Linked $x to $HOME/$x
done
xdgconfigs="$(ls config/)"
for x in $xdgconfigs; do
	rm -rf $XDG_CONFIG_HOME/$x
	echo Removed $XDG_CONFIG_HOME$x
	ln -s $(pwd)/config/$x ~/.config/$x
	echo Linked $XDG_CONFIG_HOME$x to ./$x
done
git add .
