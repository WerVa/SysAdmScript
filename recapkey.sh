#change right command key with right option key on MacOS
#!/usr/bin/env bash
hidutil property --set '{"UserKeyMapping":[
    {
        "HIDKeyboardModifierMappingSrc":0x7000000e7,
        "HIDKeyboardModifierMappingDst":0x7000000e6
    },
    {
        "HIDKeyboardModifierMappingSrc":0x7000000e6,
        "HIDKeyboardModifierMappingDst":0x7000000e7
    }
    ]}'


#if you want change only dedicated keyboard use this command (replace 0x027e):

#     hidutil property --matching '{ "ProductID": 0x027e }' --set '{
#   "UserKeyMapping": [
#     {
#       "HIDKeyboardModifierMappingDst": 30064771300,
#       "HIDKeyboardModifierMappingSrc": 1095216660483
#     },
#     {
#       "HIDKeyboardModifierMappingDst": 30064771296,
#       "HIDKeyboardModifierMappingSrc": 280379760050179
#     }
#   ]
# }'



# to remove the key mapping use: 
# hidutil property --set '{"UserKeyMapping":[]}'


# add to start 
# sudo defaults write com.apple.loginwindow LoginHook /Users/username/remapkeys.sh
