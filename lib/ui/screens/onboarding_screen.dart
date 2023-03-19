import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_ui_design_task/ui/screens/HomePage_screen.dart';
import 'package:flutter_ui_design_task/ui/screens/welcome_screen.dart';
import 'package:flutter_ui_design_task/ui/widgets/onboarding_button_widget.dart';
import 'package:flutter_ui_design_task/ui/widgets/onboarding_page_widget.dart';
import 'package:flutter_ui_design_task/ui/widgets/splash_screen_space.dart';
import 'package:flutter_ui_design_task/ui/widgets/splash_screen_titleButton.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final controller = PageController(initialPage: 0);
  bool pageIndex = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: PageView(
        onPageChanged: (value) {
          pageIndex = value == 3;
          setState(() {});
        },
        controller: controller,
        children: [
          OnBoardingPageWidget(
              imagePath: 'assets/onboarding_screen_logo/Tracking & Maps.svg',
              titleText: 'Nearby restaurants',
              subtitleText:
                  '''You don\'t have to go far to find a good restaurant,
      we have provided all the restaurants that is
                             near you'''),
          OnBoardingPageWidget(
              imagePath: 'assets/onboarding_screen_logo/Order illustration.svg',
              titleText: 'Select the Favorites Menu',
              subtitleText: '''Now eat well, don't leave the house,You can 
         choose your favorite food only with 
                            one click'''),
          OnBoardingPageWidget(
              imagePath: 'assets/onboarding_screen_logo/Safe Food.svg',
              titleText: 'Good food at a cheap price',
              subtitleText: '''You can eat at expensive restaurants with
                    affordable price'''),
          WelcomeScreenWidget(
              size: size,
              imagePath: 'assets/welcome_screen_logo/Order Success.svg',
              title: 'Welcome',
              text: '''Before enjoying Foodmedia services 
              Please register first''')
        ],
      ),
      bottomSheet: pageIndex
          ? const SizedBox()
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                OnBoardingPageButtonWidget(
                    text: 'Skip',
                    controller: controller,
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomePage(),
                          ),
                          (route) => false);
                    }),
                SmoothPageIndicator(
                  controller: controller,
                  count: 3,
                  effect: const WormEffect(
                    activeDotColor: Colors.green,
                    dotColor: Colors.grey,
                    dotHeight: 13,
                    dotWidth: 13,
                    type: WormType.thin,
                    // strokeWidth: 5,
                  ),
                ),
                OnBoardingPageButtonWidget(
                  controller: controller,
                  onPressed: () {
                    controller.nextPage(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.bounceInOut);
                  },
                ),
              ],
            ),
    );
  }
}
