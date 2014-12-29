function ip {
  echo "Airport:  $(ifconfig en0 | grep netmask | awk '{print $2}')"
  echo "External: $(curl --silent checkip.dyndns.org | awk '{print $6}' | cut -f 1 -d "<")"
  echo "VPN:      $(ifconfig ppp0 2> /dev/null | grep inet | awk '{print $2}')"
}

function start {
  echo "start"
  launchctl load ~/Library/LaunchAgents/homebrew.mxcl.boot2docker.plist
  launchctl load ~/Library/LaunchAgents/homebrew.mxcl.redis.plist
  launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist
  launchctl load ~/Library/LaunchAgents/homebrew.mxcl.mysql.plist
  launchctl load ~/Library/LaunchAgents/homebrew.mxcl.mongodb.plist
  launchctl load ~/Library/LaunchAgents/homebrew.mxcl.memcached.plist
  launchctl load ~/Library/LaunchAgents/homebrew.mxcl.elasticsearch090.plist
}

function stop {
  echo "stop"
  launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.boot2docker.plist
  launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.redis.plist
  launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist
  launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.mysql.plist
  launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.mongodb.plist
  launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.memcached.plist
  launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.elasticsearch090.plist
}
