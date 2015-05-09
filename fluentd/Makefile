
fluent:
	nohup fluentd -c ./fluentd.conf &

dummer:
	nohup dummer -c ./dummer.conf &

confirm:
	@ps aux|head -n 1
	@ps aux|grep -v grep|grep fluentd --color
	@ps aux|grep -v grep|grep dummer --color
