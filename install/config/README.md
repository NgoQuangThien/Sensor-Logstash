#	Settings Files

##	logstash.yml
```
	Chứa cờ cấu hình Logstash. Có thể đặt cờ trong tệp này thay vì chuyển cờ tại dòng lệnh. 
	Bất kỳ cờ nào đạt tại dòng lệnh sẽ ghi đè cài đặt tương ứng trong logstash.yml
```

##	pipeline.yml
```
	Chứa khuôn khổ và hướng dẫn để chạy nhiều đường ống trong một phiên bản Logstash.
```

##	jvm.options
```
	Chứa cờ cấu hình JVM. Sử dụng tệp này để đặt giá trị ban đầu và giá trị tối đa cho tổng dung lượng heap.
	Cũng có thể sử dụng tệp này để đặt ngôn ngữ cho Logstash.
	Chỉ định mỗi cờ trên một dòng lệnh riêng biệt.
```
###	Thiết lập RAM cho logstash
```
	thay đổi thông số của "-Xms1g" và "-Xmx1g"
	Ví dụ:
	Đặt 1GB RAM cho Logstash:
	-Xms1g
	-Xmx1g

	Đặt 2GB RAM cho Logstash:
	-Xms2g
	-Xmx2g	
```

##	log4j2.properties
```
	Chứa các cài đặt mặc định cho thư viện log4j2.
```

##	startup.options
```
	Chứa các tùy chọn được sử dụng bởi tập lệnh "system-install"
```
