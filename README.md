# SecurePi-Mandatory-Access-Control

1. root계정 로그인
2. 디렉토리 생성 및 이동
	- mkdir /root/securepi (이미 존재한다면 생략)
	- cd /root/securepi
3. Mandatory Access Control 파일 다운
	- git clone https://github.com/khu-mesl-348/SecurePi-Mandatory-Access-Control.git
4. SELinux 정책 설정
	- cd /root/securepi/SecurePi-Mandatory-Access-Control
	- sh ./mac_config.sh
