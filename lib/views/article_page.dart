import 'package:flutter/material.dart';
import 'package:flutter_application_1/theme/layout/scaffold_layout.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ArticlePage extends StatelessWidget {
  const ArticlePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldLayout(
        body: Column(
      children: [
        Expanded(
          child: Center(
            child: Text(
              '''
스마트폰의 진화는 우리의 일상을 크게 변화시켰습니다. 불과 몇 년 전만 해도 상상하기 어려웠던 기능들이 이제는 당연하게 여겨집니다. 고성능 카메라, 빠른 인터넷 연결, 그리고 다양한 앱들은 우리의 손 안에서 작은 컴퓨터처럼 작동합니다.

특히 최신 모델들은 인공지능 기술을 탑재하여 사용자 경험을 한층 더 개선하고 있습니다. 음성 인식, 얼굴 인식, 그리고 개인화된 추천 시스템 등은 이제 스마트폰의 기본 기능이 되어가고 있습니다. 이러한 발전은 우리의 생활을 더욱 편리하게 만들어주지만, 동시에 개인정보 보호에 대한 새로운 과제도 제시합니다.

앞으로 스마트폰은 어떤 모습으로 발전할까요? 접히는 화면, 홀로그램 디스플레이, 더욱 강력한 배터리 등 흥미로운 가능성이 우리를 기다리고 있습니다.

400자를 채웠다.
          ''',
              style: TextStyle(
                  fontSize: 19.sp,
                  fontWeight: FontWeight.w400,
                  height: 1.4.sp,
                  letterSpacing: -0.15),
            ),
          ),
        ),
        SizedBox(
          height: 70.h,
          child: const Center(
            child: Text("1 / 5"),
          ),
        )
      ],
    ));
  }
}
