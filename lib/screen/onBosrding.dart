// ignore_for_file: file_names

import 'package:flutter/material.dart';




class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {

  late PageController _pageController;

  int _pageIndex = 0;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  


  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 238, 152, 185),
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Expanded(
                  child: PageView.builder(
                    itemCount: demoData.length,
                    controller: _pageController,
                    onPageChanged: (index) {
                      setState(() {
                        _pageIndex = index;
                      });
                    },
                    itemBuilder: (context, index) => OnboardWidget(
                      image: demoData[index].image,
                      title: demoData[index].title,
                      description: demoData[index].description, 
                      backgroundColor: demoData[index].backgroundColor,
                    )
                  ),
                ),
                Row(
                  children: [
                    ...List.generate(
                      demoData.length,
                      (index) => Padding(
                        padding: const EdgeInsets.only(right: 4),
                        child: DotIndicator(isActive: index == _pageIndex),
                      )
                    ),
                    const Spacer(),
                    SizedBox(
                      height: 60,
                      width: 60,
                      child: ElevatedButton(
                        onPressed: () {
                          _pageController.nextPage(
                            curve: Curves.ease, 
                            duration: const Duration(milliseconds: 300));
                        },
                        style: ElevatedButton.styleFrom(
                          shape: const CircleBorder(),
                        ),
                        child: const Icon(Icons.arrow_forward
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        )
      ),
    );
  }
}

class DotIndicator extends StatelessWidget {
  const DotIndicator({
    Key? key,
    this.isActive = false,
  }) : super(key: key);

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: isActive ? 12 : 4,
      width: 4,
      decoration: BoxDecoration(
        color: isActive ? Colors.blue : Colors.blue.withOpacity(0.4),
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      )
    );
  }
}

class Onboard {
  final String  image, title, description;
  final Color backgroundColor;

  Onboard( {
    required this.image,
    required this.title,
    required this.description,
    required this.backgroundColor
  });
}

final List<Onboard> demoData = [
  Onboard(
    backgroundColor: const Color.fromARGB(255, 231, 218, 179),
    image: 'lib/assets/image/CutOut.png',
    title: "WELCOME!",
    description: "**Created by มากาLong**"
  ),
  Onboard(
    backgroundColor: const Color.fromARGB(255, 236, 128, 170),
    image: 'lib/assets/image/Fuyu.png',
    title: "Fuyu Kimono Form",
    description: "**Created by มากาLong**"
  ),
  Onboard(
    backgroundColor: const Color.fromARGB(255, 165, 193, 253),
    image: 'lib/assets/image/haran1.png',
    title: "Haran Origin Form",
    description: "**Created by มากาLong**"
  ),
  Onboard(
    backgroundColor: const Color.fromARGB(255, 173, 133, 238),
    image: 'lib/assets/image/haran2.png',
    title: "Haran Yukata Form ",
    description: "**Created by มากาLong**"
  ),
  Onboard(
    backgroundColor: const Color.fromARGB(255, 250, 183, 95),
    image: 'lib/assets/image/Sedona.png',
    title: "Sedona Idol Form",
    description: "**Created by มากาLong**"
  ),
];



class OnboardWidget extends StatelessWidget {
  const OnboardWidget({
    Key? key,
    required this.image,
    required this.title,
    required this.description, 
    required this.backgroundColor,
  }) : super(key: key);

  final String image, title, description;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      child: Column(
        children: [
          const Spacer(),
          Image.asset(
            image,
            height: 600,
          ),
          const Spacer(),
          Text(
            title,
            textAlign: TextAlign.center,
            style: Theme.of(context)
            .textTheme
            .headlineSmall
            ?.copyWith(fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 16),
          Text(
            description,
            textAlign: TextAlign.center,
          ),
          const Spacer(),
    
          
        ],
      ),
    );
  }
}