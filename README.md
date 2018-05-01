# OpenWRT IPK Architecture Converter
Convert ipk architecture from mipsel_24kc to ramips_1004kc without recompilation     
# What's this
As we all know, mostly, there is no diffenence between mipsel_24kc and ramips_1004kc architecture              
But opkg command dont know that and refuse to install a 'mipsel_24kc' ipk in a 'ramips_1004kc' router             
This tool can convert an ipk's architecture information to ramips_1004kc by simply change opkg control info, to bypass that mechanism          
# How to use
```shell
24to1004.sh file1 file2 file3 ...
```
