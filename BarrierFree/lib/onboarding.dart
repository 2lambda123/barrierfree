import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

import 'can_do.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
            title: '로그인을 통해 진행상황을 저장하세요.',
            body: '아이디, 비밀번호를 입력하고 회원가입, 로그인하세요.',
            image: Image.asset('image/1.png'),
            decoration: getPageDecoration()),
        PageViewModel(
            title: '매일 매일 재밌는 단어학습!',
            body: '단어 학습을 통해 남한어에 익숙해지세요!',
            image: Image.asset('image/2.png'),
            decoration: getPageDecoration()),
        PageViewModel(
            title: '캔두를 통해 남한에 성공적으로 정착하세요.',
            body: '캔두는 탈북민 여러분의 언어의 장벽을 낮춰줍니다.',
            image: Image.asset('image/3.png'),
            decoration: getPageDecoration()),
      ],
      done: const Text('done'),
      onDone: () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const MyApp()),
        );
      },
      next: const Icon(Icons.arrow_forward),
      showSkipButton: true,
      skip: const Text('skip'),
      dotsDecorator: DotsDecorator(
          color: Color(0xff6DB193),
          size: const Size(10, 10),
          activeSize: const Size(22, 10),
          activeShape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
          activeColor: Colors.blue),
      curve: Curves.bounceOut,
    );
  }

  PageDecoration getPageDecoration() {
    return const PageDecoration(
        titleTextStyle: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            fontFamily: 'Pretendard'),
        bodyTextStyle: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Color(0xff6DB193),
            fontFamily: 'Pretendard'),
        imagePadding: EdgeInsets.only(top: 40),
        pageColor: Colors.white);
  }
}
