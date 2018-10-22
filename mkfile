PROGS=\
	acme \
	faces \
	rio \
	samterm \
	clock \
	winwatch \
	mothra \
	stats

PWD=`{pwd}

defaullt:QV:
	echo mk patch
	echo mk unpatch
	echo mk rebuild

patch:QV:
	cd /
	for(p in $PROGS){
		echo $p...
		ape/patch -p1 < $PWD/$p.patch
	}

unpatch:QV:
	cd /
	for(p in $PROGS){
		echo $p...
		ape/patch -R -p1 < $PWD/$p.patch
	}

rebuild:QV:
	for(p in $PROGS){
		if(test -d /sys/src/cmd/$p){
			cd /sys/src/cmd/$p
			mk nuke
			mk safeinstall
		}
	}
