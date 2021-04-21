url="https://somafm.com/metal32.pls"
agent_string='Mozilla/5.0 (Windows NT 10.0; rv:78.0) Gecko/20100101 Firefox/78.0'
agent_print='Tor Browser (20201007)'

if [ $# -eq 1 ]; then

  echo "--- Radio Station: Metal Detector @SomaFM"
  echo "--- User Agent: $agent_print"

  vol_var="$1"
  check_fail=0

  while [ "$check_fail" -eq 0 ]; do
    mpv --volume=$vol_var\
        --user-agent="$agent_string"\
        --force-seekable=yes $url || check_fail=1
  done

else
  echo "check arguments"
fi
