본 프로젝트는 QT로 ROS 토픽 메세지를 받기 위한 테스트 프로젝트이다.
토픽으로 GPS모듈의 위도 및 경도 정보를 받는다. GUI는 구현하지 않았으며 디버그를 통해 간단하게 테스트하였다.

### 개발환경

- Ubuntu18.04
- ROS melodic
- Qt 5.14.1
- Qt Creator 4.11.1
- GPS모듈 : Ublox C099-F9P GPS

### 테스트
1. GPS 모듈을 세팅한다.
2. ROS launch 를 실행한다.
3. QT 프로젝트를 실행한다.
4. 콘솔창을 통해 위도, 경도를 확인한다.

### 참고

https://velog.io/@swooeun/ROS-Ublox-ZED-F9P-RTK-UTM
