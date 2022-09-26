import 'package:flutter/material.dart'; // 앱 화면을 보여주게 하는 import 패키지를 엽니다.

void main() {
  // 시작점 함수
  runApp(const MyApp()); // 플러터 앱 기본 실행 함수, 객체 생성
}

class MyApp extends StatelessWidget {
  // extends : 상속 키워드
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var url =
        "https://www.google.co.kr/images/branding/googlelogo/2x/googlelogo_color_272x92dp.png"; //구글 이미지 주소를 입력한다.
    //화면에 그리기 위한 build 메서드(없으면 안된다.)
    // 위젯 build 함수 재정의, StatlessWidget 위젯에 정의되어 있음(고정)
    return MaterialApp(
      // 화면에 그릴 MaterialApp 위젯 반환
      title: '플러터 앱',
      home: Scaffold(
          // 디자인 전체 구조(FRAME)를 잡아준다.
          appBar: AppBar(title: const Text("타이틀")), // 앱의 상단 타이틀
          body: Column(
            children: <Widget>[
              // 텍스트 및 아이콘 추가해보기
              const Text(
                "나의 첫 플러터 앱\n",
                style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold),
              ),
              const Text("이제 앱 개발 해보자\n"),
              const Icon(Icons.videocam, color: Colors.amber, size: 100.0),
              SizedBox(height: 200, width: 300, child: Image.network(url)),
              Image.asset('assets/images/googlelogo_color_272x92dp.png')
            ],
          )),
    );
  }
}

/*
class MyHomePage extends StatefulWidget {
  // StatefulWidget 변경
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: '좋아요!',
        child: const Icon(Icons.thumb_up), // 버튼 만들기
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  } // 수정을 위한 주석
}
*/
