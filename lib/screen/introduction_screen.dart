
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'home_screen.dart';
class IntroScreen extends StatelessWidget {
  IntroScreen({super.key});
final List<PageViewModel> pages = [
  PageViewModel(
    title :'Welcome to my program ja',
    body:'โปรแกรมมันไม่มีอะไรนะเว้ย',
    footer: SizedBox(
      height:45,
      width:150,
      child:ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          elevation: 8,
        ),
        onPressed: () {} ,
        child:  const Text('ไม่เป็นไรอยากดูจริง')),
      ),
      image: Image.network('https://i.imgflip.com/3lwufn.jpg'),
      decoration: const PageDecoration(
        titleTextStyle: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
        )
      ),
    ),

  PageViewModel( //page 2 kub 
    title :'Welcome to my program ja',
    body:'แน่ใจอ๋อน้อง คิดดีๆ',
    footer: SizedBox(
      height:45,
      width:150,
      child:ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          elevation: 8,
        ),
        onPressed: () {} ,
        child:  const Text('เออแน่ใจ')),
      ),
      image: Image.network('https://i.kym-cdn.com/entries/icons/facebook/000/022/138/highresrollsafe.jpg'),
      decoration: const PageDecoration(
        titleTextStyle: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
        )
      ),
    ),

  PageViewModel( //page 3 kub
    title :'Welcome to my program ja',
    body:'เอ็งมองตาพี่',
    footer: SizedBox(
      height:45,
      width:150,
      child:ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          elevation: 8,
        ),
        onPressed: () {} ,
        child:  const Text('เออก็จะดู')),
      ),
      image: Image.network('https://i.kym-cdn.com/entries/icons/facebook/000/041/444/sdc.jpg'),
      decoration: const PageDecoration(
        titleTextStyle: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
        )
      ),
    ),
];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('On Boarding'),
        centerTitle: true,
      ),
      body: IntroductionScreen(
        pages: pages,
        showSkipButton: true,
        skip: const Text('Skip'),
        showDoneButton: true,
        done: const Text('Done'),
        showNextButton: true,
        next: const Icon(Icons.arrow_forward,size: 25,),
        onDone: () => onDone (context),
        curve: Curves.bounceOut,
        dotsDecorator: const DotsDecorator(
          size: Size(15,15),
          color: Colors.blue,
          activeColor: Colors.orange,
          activeSize: Size.square(20),
        ),
      ),
    );
  }
  void onDone (context) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('ON_BOARDING', false);
    Navigator.pushReplacement(
      context, 
      MaterialPageRoute(
        builder:(context) =>  HomeScreen(),
        ),
        );
  }
}