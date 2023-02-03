import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 8.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: Text('ButtonStyle'),
              style: ButtonStyle(
                //Material State
                //
                // hovered - 호버링 상태 (마우스를 커서에 올려놓은 상태)
                // focused - 포커스 됐을 때 (텍스트 필드 : 커서가 깜박이는 상태)
                // pressed - 눌렀을 때 (o)
                // dragged - 드래그 됐을 때
                // selected - 선택 됐을 때 (체크박스, 라디오 버튼)
                // scrollUnder - 다른 컴포넌트 밑으로 스크롤링 됐을 때
                // disabled - 비활성화 됐을  (onPressed : null) (o)
                // error - 에러 상태
                backgroundColor: MaterialStateProperty.resolveWith(
                    (Set<MaterialState> states){
                      if(states.contains(MaterialState.pressed)){
                        return Colors.green;
                      }
                      return Colors.black;
                    }
                ),
                foregroundColor: MaterialStateProperty.resolveWith(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed)) {
                      return Colors.white;
                    }
                    return Colors.red;
                  },
                ),
                padding: MaterialStateProperty.resolveWith(
                    (Set<MaterialState> states){
                      if(states.contains(MaterialState.pressed)){
                        return EdgeInsets.all(100.0);
                      }
                      return EdgeInsets.all(20.0);
                    },
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                'ElevatedButton',
              ),
              style: ElevatedButton.styleFrom(
                // 메인 칼라
                primary: Colors.red,
                // 글자 및 애니메이션 색깔
                onPrimary: Colors.black,
                // 그림자 색깔
                shadowColor: Colors.green,
                //3D 입체감의 높이
                elevation: 10.0,
                textStyle: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20.0,
                ),
                padding: EdgeInsets.all(32.0),
                //테두리의 속성
                side: BorderSide(
                  color: Colors.black,
                  width: 4.0,
                ),
              ),
            ),
            OutlinedButton(
              onPressed: () {},
              child: Text(
                'OutlinedButton',
              ),
              style: OutlinedButton.styleFrom(
                primary: Colors.green,
                backgroundColor: Colors.yellow,
                elevation: 10.0,
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'TextButton',
              ),
              style: TextButton.styleFrom(
                primary: Colors.brown,
                backgroundColor: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
