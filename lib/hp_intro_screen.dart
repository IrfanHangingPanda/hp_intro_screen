library hp_intro_screen;

import 'package:flutter/material.dart';

import 'package:hp_intro_screen/slider_model.dart';

// ignore: must_be_immutable
class HangingPandaIntro extends StatefulWidget {
  List<Map<String, String>> itemCount = [];
  Function(int index, List<SliderModel> slides) buildOnBoardingPage =
      (int index, List slids) {};
  Function(int value) onChange = (value) {};
  PageController pageController = PageController();
  HangingPandaIntro(
      {super.key,
      required this.itemCount,
      required this.buildOnBoardingPage,
      required this.onChange,
      required this.pageController});

  @override
  State<HangingPandaIntro> createState() => _HangingPandaIntroState();
}

class _HangingPandaIntroState extends State<HangingPandaIntro> {
  final PageController _pageController = PageController();
  List<SliderModel> slides = List<SliderModel>.empty();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    slides = getSlides(itemCount: widget.itemCount);
    return Scaffold(
      body: PageView.builder(
        controller: widget.pageController,
        itemBuilder: (context, index) {
          return widget.buildOnBoardingPage(index, slides);
        },
        onPageChanged: widget.onChange,
        scrollDirection: Axis.horizontal,
        itemCount: slides.length, // Can be null
      ),
    );
  }
}
