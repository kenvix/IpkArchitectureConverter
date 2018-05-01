#!/bin/sh
#written by Kenvix // kenvix.com
echo "Convert ipk architecture from mipsel_24kc to ramips_1004kc"
cd `pwd`
if [ x$1 != x ]
then
    rm -f "control.tar.gz" "debian-binary" "data.tar.gz"
    for i in "$@"; do
        echo "----------------------------------------------------------"
        echo "Processing: $i"
        tar xzvf $i && tar xzvf "control.tar.gz" && sed -i 's|mipsel_24kc|ramips_1004kc|g' control && rm "control.tar.gz" && tar czvf "control.tar.gz" control postinst prerm && tar czvf "converted.$i" "control.tar.gz" "data.tar.gz" "debian-binary"
        rm -f "control.tar.gz" "debian-binary" "data.tar.gz" "control" "postinst" "prerm" 
    done
else
    echo "Written by Kenvix // kenvix.com"
    echo "========================================================="
    echo "As we all know, mostly, there is no diffenence between mipsel_24kc and ramips_1004kc architecture"
    echo "But opkg command dont know that and refuse to install a 'mipsel_24kc' ipk in a 'ramips_1004kc' router"
    echo "This tool can convert an ipk's architecture information to ramips_1004kc by simply change opkg control info, to bypass that mechanism"
    echo "Learn more: "
fi
