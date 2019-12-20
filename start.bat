start /B x410.exe /desktop
start "" /B "C:\wsl\pulseaudio\bin\pulseaudio.exe"
ubuntu1804.exe run "if [ -z \"$(pidof xfce4-session)\" ]; then export DISPLAY=127.0.0.1:0.0; export PULSE_SERVER=tcp:127.0.0.1; xfce4-session; pkill '(gpg|ssh)-agent'; taskkill.exe /IM x410.exe; taskkill.exe /IM pulseaudio.exe /F; fi;"