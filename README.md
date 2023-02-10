# hp_intro_screen  For Flutter

An awesome Custom OnBoard screen for both android and ios

## Features
showing hp_intro_screen

## Getting started
To use this package, add hp_intro_screen as a dependency in your pubspec.yaml file.

## Basic Usage



```dart
HangingPandaIntro(
    pageController: PageController(),
   itemCount:[],
   
    onChange: (value) {
     // on page change
    },
    buildOnBoardingPage: (index, slides) {
     return Column();
     // get items like this formate 
     //(slides[index].getImage(),slides[index].title(),slides[index].getDescriptionOne)  
    },
)
```

## ItemCount Example:

```dart
var itmes = [
  {
        'image':
            'https://media.istockphoto.com/id/1165405371/vector/classic-summer-ice-cream-van.jpg?s=612x612&w=0&k=20&c=t_M5Nq9S7bRKe-lnB0YiCxybHJshFom7vupoT2HL7Lg=',
        'title': 'Title Hanging Panda',
        'description1': 'There are many variations of ',
        'description2': 'passages of Lorem Ipsum available aaa',
        'description3': 'but the majority have suffered iiii',
      },
      {
        'image':
            'https://media.istockphoto.com/id/1165405371/vector/classic-summer-ice-cream-van.jpg?s=612x612&w=0&k=20&c=t_M5Nq9S7bRKe-lnB0YiCxybHJshFom7vupoT2HL7Lg=',
        'title': ' Tiltle2 Hanging Panda',
        'description1': '238427834696123867521',
        'description2': 'passages of Lorem Ipsum available aaa',
        'description3': 'but the majority have suffered iiii',
      },
      {
        'image':
            'https://media.istockphoto.com/id/1165405371/vector/classic-summer-ice-cream-van.jpg?s=612x612&w=0&k=20&c=t_M5Nq9S7bRKe-lnB0YiCxybHJshFom7vupoT2HL7Lg=',
        'title': 'Title Lorem Ipsum',
        'description1': 'There are many variations of',
        'description2': 'passages of Lorem Ipsum available aaa',
        'description3': 'but the majority have suffered iiii',
      },
      {
        'image':
            'https://media.istockphoto.com/id/1165405371/vector/classic-summer-ice-cream-van.jpg?s=612x612&w=0&k=20&c=t_M5Nq9S7bRKe-lnB0YiCxybHJshFom7vupoT2HL7Lg=',
        'title': 'Title2 Lorem Ipsum',
        'description1': 'There are many variations of',
        'description2': 'passages of Lorem Ipsum available aaa',
        'description3': 'but the majority have suffered iiii',
      },
];
```
# Full code example:
```
import 'package:flutter/material.dart';
import 'package:hp_intro_screen/hp_intro_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'onBoarding  screen',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final PageController _pageController = PageController();
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    skip() => {
          /// Your code here on skip
        };
    var items = [
      {
        'image':
            'https://media.istockphoto.com/id/1165405371/vector/classic-summer-ice-cream-van.jpg?s=612x612&w=0&k=20&c=t_M5Nq9S7bRKe-lnB0YiCxybHJshFom7vupoT2HL7Lg=',
        'title': 'Title Hanging Panda',
        'description1': 'There are many variations of ',
        'description2': 'passages of Lorem Ipsum available aaa',
        'description3': 'but the majority have suffered iiii',
      },
      {
        'image':
            'https://media.istockphoto.com/id/1165405371/vector/classic-summer-ice-cream-van.jpg?s=612x612&w=0&k=20&c=t_M5Nq9S7bRKe-lnB0YiCxybHJshFom7vupoT2HL7Lg=',
        'title': ' Tiltle2 Hanging Panda',
        'description1': '238427834696123867521',
        'description2': 'passages of Lorem Ipsum available aaa',
        'description3': 'but the majority have suffered iiii',
      },
      {
        'image':
            'https://media.istockphoto.com/id/1165405371/vector/classic-summer-ice-cream-van.jpg?s=612x612&w=0&k=20&c=t_M5Nq9S7bRKe-lnB0YiCxybHJshFom7vupoT2HL7Lg=',
        'title': 'Title Lorem Ipsum',
        'description1': 'There are many variations of',
        'description2': 'passages of Lorem Ipsum available aaa',
        'description3': 'but the majority have suffered iiii',
      },
      {
        'image':
            'https://media.istockphoto.com/id/1165405371/vector/classic-summer-ice-cream-van.jpg?s=612x612&w=0&k=20&c=t_M5Nq9S7bRKe-lnB0YiCxybHJshFom7vupoT2HL7Lg=',
        'title': 'Title2 Lorem Ipsum',
        'description1': 'There are many variations of',
        'description2': 'passages of Lorem Ipsum available aaa',
        'description3': 'but the majority have suffered iiii',
      },
    ];
    void onPressed() {
      if (currentIndex < items.length) {
        _pageController.animateToPage(currentIndex + 1,
            duration: const Duration(milliseconds: 300), curve: Curves.ease);
      } else {
        // Here after finish nevigete to other screen
      }
    }

    Container buildDots(int index, BuildContext context) {
      return Container(
        height: 8,
        width: 8,
        margin: const EdgeInsets.only(right: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: currentIndex == index
              ? const Color(0XFFFC4442)
              : const Color(0XFFFC4442).withOpacity(0.3),
        ),
      );
    }

    return Scaffold(
        body: HangingPandaIntro(
      pageController: _pageController,
      onChange: (int value) {
        currentIndex = value;
        setState(() {});
      },
      itemCount: items,
      buildOnBoardingPage: (index, slides) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
                flex: 3,
                child: Container(
                  color: Colors.white,
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(100.0)),
                      color: Color.fromARGB(255, 244, 193, 192),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          alignment: AlignmentDirectional.bottomCenter,
                          width: MediaQuery.of(context).size.width * 0.85,
                          height: MediaQuery.of(context).size.height * 0.35,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                slides[index].getImage(),
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.025,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: List.generate(items.length,
                                (index) => buildDots(index, context))),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.025,
                        ),
                      ],
                    ),
                  ),
                )),
            Expanded(
              flex: 2,
              child: Container(
                width: MediaQuery.of(context).size.width,
                color: const Color.fromARGB(255, 244, 193, 192),
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(100.0)),
                    color: Colors.white,
                  ),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.05,
                        ),
                        Text(
                          slides[index].getTitle(),
                          style: TextStyle(
                            fontSize:
                                MediaQuery.of(context).size.height * 0.030,
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.01,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: SizedBox(
                              width: MediaQuery.of(context).size.width * 0.7,
                              child: Text(
                                '${slides[index].getDescriptionOne()}'
                                '${slides[index].getDescriptionTwo()}'
                                '${slides[index].getDescriptionThree()}',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.height *
                                      0.017,
                                  fontWeight: FontWeight.w600,
                                ),
                              )),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.03,
                        ),
                        SizedBox(
                            width: MediaQuery.of(context).size.width * 0.30,
                            height: MediaQuery.of(context).size.width * 0.1,
                            child: TextButton(
                                onPressed: () {
                                  onPressed();
                                },
                                style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            const Color(0XFFFC4442)),
                                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            side: const BorderSide(
                                                color: Color(0XFFFC4442))))),
                                child: Text(
                                    currentIndex == items.length - 1
                                        ? "Get started"
                                        : 'Next',
                                    style: TextStyle(
                                        fontSize: MediaQuery.of(context).size.height * 0.018,
                                        color: Colors.white)))),
                        currentIndex != items.length - 1
                            ? TextButton(
                                onPressed: skip,
                                child: Text('SKIP',
                                    style: TextStyle(
                                        fontSize:
                                            MediaQuery.of(context).size.height *
                                                0.024,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.black)))
                            : const SizedBox(),
                      ]),
                ),
              ),
            ),
          ],
        );
      },
    ));
  }
}


```
