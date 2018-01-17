# macOS_toolbox

## Synopsis

macOS_toolbox is a replacement for busybox/toybox for macOS. It combines several macOS command line utilities into a single executable.
This works very much like crunchgen: The unmodified source code is compiled and linked together.

## Requirements

Tested with Xcode 9.2 (9C40b) on a Mac running macOS 10.13.2.

## Building

**Install Xcode**

You can obtain the latest version of Xcode from the [Mac App Store](https://itunes.apple.com/us/app/xcode/id497799835) or the [Apple developer website](https://developer.apple.com/download/) (requires free Apple Developer account).

**Download files**

Open a terminal and run:
```
git clone https://github.com/lukas-zronek/macOS_toolbox.git
```

**Compile**
```
cd macOS_toolbox
```

You can build two different variants:

* Add all available programs
```
./build
```

or

* just add programs that are missing in the macOS recovery partition
```
./build recovery
```

## Usage

```
./toolbox COMMAND
```

If no command is given, all included programs will be listed:

```
./toolbox
Included programs:
	uuencode
	uudecode
	mesg
	write
	chflags
	chmod
	chown
	cksum
	compress
	cp
	dd
	df
	du
	gzip
	install
	ipcrm
	ln
	ls
	mkdir
	mkfifo
	mknod
	mtree
	mv
	pathchk
	pax
	rm
	unlink
	rmdir
	stat
	touch
	apply
	basename
	chroot
	date
	dirname
	echo
	env
	expr
	false
	find
	getopt
	hexdump
	od
	hostname
	id
	groups
	whoami
	jot
	kill
	killall
	lastcomm
	locate
	logname
	mktemp
	nice
	nohup
	path_helper
	printenv
	printf
	pwd
	renice
	script
	seq
	sh
	shlock
	sleep
	systime
	tee
	test
	[
	time
	true
	uname
	users
	what
	whereis
	which
	who
	xargs
	yes
	banner
	cat
	col
	colrm
	column
	comm
	csplit
	cut
	ed
	ee
	expand
	fmt
	fold
	grep
	egrep
	fgrep
	zgrep
	zegrep
	zfgrep
	bzgrep
	bzegrep
	bzfgrep
	head
	join
	lam
	look
	md5
	nl
	paste
	pr
	rev
	rs
	sed
	sort
	split
	tail
	tr
	ul
	unexpand
	uniq
	unvis
	vis
	wc
	rsync
	nano
```

## License

macOS_toolbox is released under [BSD 2-Clause License](https://github.com/lukas-zronek/macOS_toolbox/blob/master/LICENSE).
With the exception of source code in the [extern](https://github.com/lukas-zronek/macOS_toolbox/tree/master/extern) directory which falls under the license specified in the respective source file.
