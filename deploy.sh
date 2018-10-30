#!/bin/bash

# ./make_pot.sh

# ./use_po.sh

../hugo

rsync -avz --delete public/ -e ssh jibecfed@fedorapeople.org:~/public_html/blog-hugo