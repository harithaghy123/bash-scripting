#!/bin/bash

SRCDIR="/root/school/students/documents/*"
DESTDIR="/root/school/backup_folder"
FILENAME=backup1-$(date +%-Y%-m%-d)-$(date +%-T).tgz 
tar cvf $SRCDIR.tar $SRCDIR
mv $SRCDIR.tar $DESTDIR
#tar cvf $SRCDIR =$DESTDiIR$FILENAME $SRCDIR
#tar --create --gzip --file=$DESTDIR$FILENAME $SRCDIR
