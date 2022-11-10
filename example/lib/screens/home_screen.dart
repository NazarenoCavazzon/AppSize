import 'package:appsize/appsize.dart';
import 'package:example/util/color_util.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  final _pageController = PageController();
  int _pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: EdgeInsets.only(
          bottom: AppSizeUtil.deviceType == DeviceType.tablet ? 1.h : 0,
          right: AppSizeUtil.deviceType == DeviceType.tablet ? 2.w : 0,
        ),
        child: SizedBox(
          height: 7.h,
          width: 7.h,
          child: FloatingActionButton(
            onPressed: () {
              _pageController.animateToPage(
                _pageIndex < 3 ? _pageIndex + 1 : 0,
                duration: const Duration(milliseconds: 500),
                curve: Curves.decelerate,
              );
            },
            backgroundColor: getColor(),
            child: Icon(
              _pageIndex < 3 ? Icons.arrow_forward : Icons.done,
              size: 3.h,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.red,
            width: 100.w,
            height: 20.h,
          ),
          24.height,
          // SizedBox(
          //   height: 12,
          // ),
          Container(
            color: Colors.green,
            width: 100.w,
            height: 20.h,
          ),
        ],
      ),
    );
  }

  Widget widDots() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.only(bottom: 4.h),
        child: SmoothPageIndicator(
          controller: _pageController,
          count: 4,
          effect: ExpandingDotsEffect(
            expansionFactor: 2.5,
            spacing: 1.5.w,
            radius: 100.w,
            dotWidth: 1.5.h,
            dotHeight: 1.5.h,
            dotColor: Colors.grey[300]!,
            activeDotColor: getColor(),
          ),
        ),
      ),
    );
  }

  Color getColor() {
    switch (_pageIndex) {
      case 0:
        return ColorUtil.color1();
      case 1:
        return ColorUtil.color2();
      case 2:
        return ColorUtil.color3();
      default:
        return ColorUtil.color4();
    }
  }
}
