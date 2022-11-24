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
            title: '퀴즈 풀고 포인트 받아가세요!',
            body: 'This is the first page'
                'We are making on-boarding screens.'
                'It is very interesting!',
            image: Image.asset('image/page1.png'),
            decoration: getPageDecoration()),
        PageViewModel(
            title: '매일매일 나아지는 억양!',
            body: 'This is the second page'
                'We are making on-boarding screens.'
                'It is very interesting!',
            image: Image.asset('image/page2.png'),
            decoration: getPageDecoration()),
        PageViewModel(
            title: '북한어를 남한어로 번역해보세요!',
            body: 'This is the third page'
                'We are making on-boarding screens.'
                'It is very interesting!',
            image: Image.asset('image/page3.png'),
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
          color: Colors.cyan,
          size: const Size(10, 10),
          activeSize: const Size(22, 10),
          activeShape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
          activeColor: Colors.red),
      curve: Curves.bounceOut,
    );
  }

  PageDecoration getPageDecoration() {
    return const PageDecoration(
        titleTextStyle: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        bodyTextStyle: TextStyle(fontSize: 18, color: Colors.blue),
        imagePadding: EdgeInsets.only(top: 40),
        pageColor: Colors.orange);
  }
}
