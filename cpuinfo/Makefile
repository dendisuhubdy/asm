all:
	as -arch i386 -o ./cpuinfo.o ./cpuinfo.s
	ld -e _main -o cpuinfo -macosx_version_min 10.14 -lc cpuinfo.o

clean:
	rm cpuinfo cpuinfo.o
