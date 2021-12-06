DIRECTORY='/source'

tar -zxvf ../logstash-7.15.2-linux-x86_64.tar.gz
mv -f logstash-7.15.2 logstash

if [[ ! -d "$DIRECTORY" ]]; then
	mkdir -p $DIRECTORY >>/dev/null 2>&1
fi
mkdir -p "$DIRECTORY"/logstash/ >>/dev/null 2>&1

sudo cp -rf logstash "$DIRECTORY"/logstash/
sudo cp -rf conf.d "$DIRECTORY"/logstash/
sudo cp -f config/* "$DIRECTORY"/logstash/logstash/config/

cp -f service/logstash.service /etc/systemd/system/
sudo systemctl daemon-reload
sudo systemctl restart logstash.service
sudo systemctl enable logstash.service
sudo systemctl status logstash.service
