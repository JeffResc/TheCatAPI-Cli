# TheCatAPI-Cli
Use http://TheCatAPI.com/ through a Linux Terminal

#Usage (As normal script)
```bash
AlphaTech@AlphaVPS:~$ wget https://raw.githubusercontent.com/AlphaT3ch/TheCatAPI-Cli/master/cat.sh
AlphaTech@AlphaVPS:~$ # Default Method; Returns cat URL
AlphaTech@AlphaVPS:~$ ./cat.sh
AlphaTech@AlphaVPS:~$
AlphaTech@AlphaVPS:~$ # Ascii Method; Returns an ascii picture of a cat (requires [jp2a](https://github.com/AlphaT3ch/TheCatAPI-Cli/blob/master/jp2a.md))
AlphaTech@AlphaVPS:~$ ./cat.sh --ascii
```

#Usage (Globally Throughout The System (Root Access Required))
```bash
root@AlphaVPS:~# wget https://raw.githubusercontent.com/AlphaT3ch/TheCatAPI-Cli/master/global.sh && chmod +x global.sh && bash global.sh && rm global.sh
root@AlphaVPS:~# # Usage
root@AlphaVPS:~# catpic
```

#Common Errors (Within The Normal Script)
```bash
root@AlphaVPS:~# ./catpic --ascii
./catpic: line 4: jp2a: command not found
```
Resolution: [Install jp2a](https://github.com/AlphaT3ch/TheCatAPI-Cli/blob/master/jp2a.md)

```bash
root@AlphaVPS:~# ./catpic --ascii
root@AlphaVPS:~# Not a JPEG file: starts with 0x47 0x49
```
Resolution: Sadly, there is no resolution for this yet because [The Cat API](http://thecatapi.com/) isn't returning the called-for information
