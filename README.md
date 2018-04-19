# icinga2-autosigning
Autosigning script for icinga2 

### Having troubles using the Icinga 2 ca signing mechanism? 

### Having troubles signing many agents at the same time? 

### Then this lousy script does all the work for you! 

Just use the script and add the little fellow domain u want to match :) 
```
./icinga2-autosigning/icinga2-autosign.pl -m corp.int

information/cli: Signed certificate for 'CN = ansible-2.corp.int'.
Signed ansible-2.corp.int with fingerprint: 174b9f36033f10bd75bb72288e9664244701d846719ebf5bc8ef2a4ed9f6f403

information/cli: Signed certificate for 'CN = ansible-3.corp.int'.
Signed ansible-3.corp.int with fingerprint: 833b02a7ee832b8dbafb5f4f25a0881dd7f7643d8593c2d8c384ac8f351de1da
```

And of course it knows which host it doesn't need to sign twice! Awesome Smiley ;) 

```
./icinga2-autosigning/icinga2-autosign.pl
Already signed agent ansible-2.corp.int
Already signed agent ansible-3.corp.int
```

UUuh Snap! Community is great - your welcome!

