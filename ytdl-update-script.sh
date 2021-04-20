sudo -- sh -c '
  curl -L https://yt-dl.org/latest/youtube-dl -o /usr/bin/youtube-dl
  chmod 755 /usr/bin/youtube-dl
'
echo "---------------------------------"
echo "youtube-dl version: $(youtube-dl --version)"
