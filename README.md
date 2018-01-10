# macOS_toolbox

## Synopsis

macOS_toolbox is a replacement for busybox/toybox for macOS. It combines several macOS command line utilities into a single executable.
This works very much like crunchgen: The unmodified source code is compiled and linked together.

## Building

**Install Xcode Command Line Tools**
```
$ xcode-select --install
```

**Download files**
```
$ git clone https://github.com/lukas-zronek/macOS_toolbox.git
```

**Compile**
```
$ cd macOS_toolbox
```
```
$ ./build
```

## Usage

```
./toolbox COMMAND
```

If no command is given, all included programs will be listed:

```
s$ ./toolbox 
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
```

## License

macOS_toolbox is released under 2-clause BSD License.
With the exception of source code in the extern directory which falls under the license specified in the respective file.
