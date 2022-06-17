Change Right Command Key with Right Option key on MacOS


1. Open Terminal and create bash file
```sh
nano remapkeys.sh
```
2. Copy this to file
```sh
#!/usr/bin/env bash
hidutil property --set  --matching '{ "ProductID": 0x027e }' '{"UserKeyMapping":[
    {
        "HIDKeyboardModifierMappingSrc":0x7000000e7,
        "HIDKeyboardModifierMappingDst":0x7000000e6
    },
    {
        "HIDKeyboardModifierMappingSrc":0x7000000e6,
        "HIDKeyboardModifierMappingDst":0x7000000e7
    }
    ]}'
```

> Note: `--matching '{ "ProductID": 0x027e }'` ProductID you can replace that id your remote keyboard. 

3. Save File and type 

```sh 
chmod +x replecmentkey.sh
```

4. Add file to autostart 
``` sh 
sudo defaults write com.apple.loginwindow LoginHook /Users/username/remapkeys.sh
```
> Note: `/Users/username/remapkeys.sh` type path where you saved script

5. Done

> Additionall command to remove Mapping 
>````sh 
> hidutil property --set '{"UserKeyMapping":[]}'
