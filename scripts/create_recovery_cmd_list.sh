#!/bin/sh

toolbox_cmds_file=../progs.txt
recovery_cmds_file=macos_recovery_cmds.txt
output_file=../progs-recovery.txt

tmp_file=$(mktemp)

onExit()
{
	rm -f "$tmp_file"
}
trap onExit EXIT

while read -r line
do
	for cmd in $(echo "$line" | cut -f2 -d,)
	do
		fgrep -wq "$cmd" "$recovery_cmds_file"

		if [ $? -eq 0 ]
		then
			continue;
		elif [ $? -eq 1 ]
		then
			echo "$line" >> "$tmp_file"
		else
			echo 'Error: fgrep failed.' 1>&2
			exit 1
		fi
	done
done < "$toolbox_cmds_file"

uniq "$tmp_file" "$output_file"
