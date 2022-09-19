import 'package:flutter/material.dart';
// 라이브러리 파일 호출 및 외부패키지
//material구글이 만든 스타일 도구

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget { //상속 받은 
  const MyApp({super.key}); 

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {  //모든위젯들은 이 메소드를 가져옴 BuildContext 모든 위젯의 고유 ID값
    return MaterialApp( //
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home:  MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

//statelessWidget 상속 MyHomePage 클래스
class MyHomePage extends StatelessWidget {
 final String title;  // 클래스 안에 String title 프로퍼티 : 화면 상단에 표시될 제목
  MyHomePage({required this.title});  //MyHomePage 생성자  required 반드시 선언해주는의미 this키워드로 title 객체 접근

  @override
  Widget build(BuildContext context){
    return Scaffold(  // 해당위젯은 앱의 화면이 기본적으로 갖추는고 있는기능 선언 appBar body...
      appBar: AppBar( // AppBar위젯 - title프로퍼티 - Text()위젯 생성 - title프로퍼티
        title: Text(
          title,
        ),
      ),
      body: Center(//Center() 위젯 -  child()위젯 
        child: Text('Hello, Flutter!'),
      ),
    );
  }
}
