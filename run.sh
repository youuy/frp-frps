if [ ! -d "./config" ]; then
  mkdir -p config
fi
if [ ! -d "./logs" ]; then
  mkdir -p logs
fi
if [ ! -f "./config/frps.ini" ]; then
  cp ./frps_full.ini ./config/frps.ini
fi
if [ ! -f "./logs/frps.log" ]; then
  touch ./logs/frps.log
fi

./frps -c ./config/frps.ini
