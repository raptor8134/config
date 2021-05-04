homedirfile="$(ls -A | egrep '^\.' | egrep -v '(^.git$|^.gitignore$)'"
echo $homedirfile
for x in $homedirfile; do 
	rm -rf $HOME/$x
	echo Removed $HOME/$x
	ln $(pwd)/$x $HOME/$x
	echo Linked $x to $HOME/$x
done
dotconfigs="$(ls -d */ | tr -d '/')"
for x in $dotconfigs; do
	rm -rf $XDG_CONFIG_HOME/$x
	echo Removed $XDG_CONFIG_HOME$x
	ln -s $(pwd)/$x ~/.config/$x
	echo Linked $XDG_CONFIG_HOME$x to ./$x
done
git add .
