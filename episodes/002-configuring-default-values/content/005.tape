Source "resources/config.tape"
Source "episodes/002-configuring-default-values/resources/config.tape"

Sleep 1s
Type "stellar env"
Enter
Sleep 1s
Type "stellar contract deploy --network local"
Sleep 3s
Backspace 15
Type "--source other-account"
Sleep 3s
