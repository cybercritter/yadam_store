#!/bin/bash -l

sudo mount -t cifs -o rw,vers=3.0,credentials=/root/.smbcredentials //192.168.50.180/shared /winston
