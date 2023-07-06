#!/bin/sh

nohup nice sh -c "( flock -w 600 9 && /usr/sbin/makewhatis -T utf8 ) 9>/tmp/makewhatis.lock" \
	>/dev/null 2>&1 &
