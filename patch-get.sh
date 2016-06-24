#!/bin/bash
for patch in $(cat patchlist.txt);do
wget https://technet.microsoft.com/en-us/library/security/$patch.aspx
done
