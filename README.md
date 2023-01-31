## 다트에는 JIT(Just-In-Tim) 및 AOT(Ahead-Of-Time) 컴파일러 두종류로 작동한다.
#### https://www.ciokorea.com/news/243539#csidxedf32e53e03e801a1cc1649565c003b
## 소스코드 출처: 코드팩토리의 플러터 프로그래밍
#### https://github.com/codefactory-co/golden-rabbit-flutter-novice
#### 위젯은 플러터의 객체이다.
#### 195, Controller 는 위젯을 제어한다. (외부와 통신하는 클래스다)
#### 195, 설정값 (안드)AndroidManifext.xml (애플) Info.plist (플러터) pubspec.yaml
#### 196, 버튼은 콜백함수를 실행한다.
## 람다함수의 표기법
#### 자바 () -> {}
#### 자바스크립트 () => {}
#### 파이썬 lambda: 
#### 플러터 () {}
#### 200, 위젯은 상태, 무상태 두가지가 있다. 상태위젯은  setState() 가 추가된다.
#### 221, 스타일 (안드) Material (애플) Cupertino
#### 223, 배리어(barrier) 흐림처리
## 생성패턴의 종류
##### 추상 팩토리 패턴(Abstract Factory Pattern): 기능만 정의
##### 빌더 패턴(Builder Pattern): return 생성자
##### 팩토리 메서드 패턴(Factory Method Pattern): of(context)
##### 프로토타입 패턴(Prototype Pattern): clone
##### 싱글턴 패턴(Singleton pattern): static 생성자
#### 230, 설정객체는  of(context) 이고, 디바이스에 의존한다. 예를 들면 MediaQuery 는 스크린크기 정보를 준다.
#### 255, 디바이스의 움직임을 측정하려면 정규화 normalization 이 필요하다. 
#### 이 정규화를 지원하는 패키지로는  shake, sensor_plus 가 있다.
#### 257, 플러터가 공식적으로 추천하는 디렉토리명은 const, screen, component, model 4가지다.
#### 260, RootScreen 은 최상위 상태위젯이다.
#### 264, vsync 에서 v는 vertical 수직방향이다. h는 horizon 으로 수평방향이다.
## 언어별 객체구분 
#### 파이썬 OOP : 속성 & 메소드  < 구상클래스 < 컬렉션 [] () {}
####      (추상화): 메소드 < 추상클래스 :
#### 파이썬 FP : 상태 & 람다함수 < 함수 < 모듈
#### 쿼리 :  스키마 + 로우 < 테이블 < 데이터베이스
#### 리액트 : 상태 & 이벤트(콜백함수)  < 컴포넌트 < 페이지
#### 플러터 :  상태 &  setState() < 상태위젯  < 스크린
####     (추상화): 이벤트(콜백함수) < 무상태위젯
#### 271, SettingsScreen 위젯은 콜백함수의 설정값을 지정한다.
#### 277, 리스너는 옵저버패턴으로 IIFE 와 반대되는 Watcher 개념이다.
#### 보통 제너레이터와 개념적으로 일치한다.
#### 278, UX는 사용자경험으로 자이로스코프를 이용해 극대화시킨다.
#### 281, 동영상플레이어는 HomeScreen 이 VideoPalyer 로 전환된다.
#### 287, 이미지처리는 갤러리 권한이 필요하다. 이에따라 두 버전용 설정값을 코딩한다.
#### 310, 무상태위젯의 변경없음 현상은 컨트롤러의 리스너를 통해 setState() 를 호출함으로써 해결한다.
#### 320, 스택 위젝을 이용해서 위젯위에 위젯을 쌓을 수 있다.
#### 320. Position위젯과 Align위젯으로 정렬한다.
## 자료구조의 종류 
#### 키값의 종류에 따른 구분: 인덱스(integer) [],(), 키(string) {}
#### horizon 방향: queue 
#### vertical 방향: stack (순서) , heap (랜덤)
#### 323, WebRTC 는 영상통화를 구현한다. 아고라API
#### 327, CameraPreview 위젯을 사용하려면 CameraController 를 입력해야 한다. 
#### 325, late CameraController controller 에서 late 는 Lazy Loading 을 의미한다.
#### 즉, 초기화를 나중으로 미룬다는 뜻이다.
#### const a = () {} 는 실행즉시 a 객체가 생성되는 것이고, late 는 선언은 되었지만
#### 메모리 할당은 이뤄지지 않은 상태이다. 따라서 async ~ await controller.initialize() 로 
#### 반드시 초기화를 해줘야 사용할 수 있다.
#### 웹RTC는 중계용서버가 필요하다. 이는 개념적으로 크로스엔티티에 해당한다. 이것이 시그널링 서버이다.
#### 시그널링서버는 커스텀이 가능하다. 하지만 아고라를 사용해도 된다.
#### 네비게이션은 스택 구조이다. 스택은 LIFO (Last In First Out)
#### 플러터는 네비게이션 스택의 가장 위에 위치한 위젯을 화면으로 보여준다.
#### 카메라와 마이크를 사용하려면 권한 설정을 해야 한다.
#### 카메라와 마이크권한은  request()를 사용해서,사용자에게 이용 허가를 꼭 받아야만 한다.
#### PermissionStatus 클래스에서 limited 는 아이폰에서만 해당하는 상태이다.
#### late, final vs. const 의 구조이다. 즉 late 이후에 변경불가상태로 정하는 것이 final 이다.
#### 347, Future...는 어플이 다운됐을 때, 생성되는 것이 아니라, 그 화면이 랜더링될 때 빌드되는 것이다.
#### 보통 디바이스에 의존적인 객체생성에 사용된다.
#### 348, 캐싱은 데이터를 일시적으로 저장하고 기억하는 것이다. 캐싱은 화면깜빡임을 막는다.
#### 이를 위해, snapshot.hasData 를 사용해서 로딩상태를 인지한다.
#### 355, 뒤로가기는 pop() 을 사용해서 구현한다.

#### 530, ChangeNotifier 클래스를 상속하면 Provider로 상태관리를 할 수 있다.
#### 상태관리는 Getter, Setter, 상태값 로직을 뜻한다.



