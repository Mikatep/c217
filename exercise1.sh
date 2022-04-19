#!/bin/sh

echo $USER

date +%Y.%m.%d

date +%T

pwd

ls | wc -l

du -a /home/ec2-user/c217 |sort -n -r | head -n 1



