import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mcs_accounting_flutter_web/feature/presentation/state_management/could_sign_in slider_notifier.dart';
import 'package:mcs_accounting_flutter_web/util/constants/assets_constant_string.dart';
import 'package:mcs_accounting_flutter_web/util/constants/color_constant.dart';
import 'package:provider/provider.dart';

// class SliderWidget extends StatelessWidget {
//   SliderWidget({super.key});
//
//   final List<String> titleTextList = [
//     'Take Control of Your Finances with Confidence',
//     'Take Control of Your Finances with Confidence',
//     'Take Control of Your Finances with Confidence',
//   ];
//   final List<String> descriptionTextList = [
//     'MCS empowers you to effortlessly manage all your finances in one place. We combine industry-\nleasing expertise with powerful features to help you',
//     'MCS empowers you to effortlessly manage all your finances in one place. We combine industry-\nleasing expertise with powerful features to help you',
//     'MCS empowers you to effortlessly manage all your finances in one place. We combine industry-\nleasing expertise with powerful features to help you',
//   ];
//   final List<String> sliderImageList = [
//     AssetConstant.homeSliderImg1,
//     AssetConstant.homeSliderImg1,
//     AssetConstant.homeSliderImg1,
//   ];
//
//   final CarouselController _controller = CarouselController();
//
//   @override
//   Widget build(BuildContext context) {
//     return  SizedBox(
//       height: double.infinity,
//       width: double.infinity,
//       child: Stack(
//         children: [
//           Image(
//             fit: BoxFit.fill,
//               height: double.infinity,
//               width: double.infinity,
//               image: AssetImage(AssetConstant.homeSliderBg)
//           ),
//           Padding(
//             padding: EdgeInsets.symmetric(vertical: 30.h,horizontal: 10.w),
//             child: Column(
//               children: [
//                 Expanded(
//                   child: CarouselSlider.builder(
//                   carouselController: _controller,
//                   itemCount: sliderImageList.length,
//                   itemBuilder: (context, index, realIndex) {
//                     return Padding(
//                       padding: EdgeInsets.symmetric(vertical: 40.h,horizontal: 10.w),
//                       child: Image.asset(
//                         sliderImageList[index],
//                         fit: BoxFit.fill,
//                         width: double.infinity,
//                       ),
//                     );
//                   },
//                   options: CarouselOptions(
//                     height: double.infinity,
//                     autoPlay: true,
//                     enlargeCenterPage: true,
//                     viewportFraction: 1.0, // for full screen carousel
//                     onPageChanged: (index, reason){
//                       sliderIndexNotifier.setCurrentIndex(index);
//                     },
//                   ),
//                 ),
//                 ),
//                 Consumer<CloudSignInSliderNotifier>(
//                   builder: (context, sliderNotifier,child){
//                     return Column(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       children: [
//                         Text(
//                           titleTextList[sliderNotifier.currentIndex],
//                           style: TextStyle(
//                               fontSize: 23.h,
//                               fontWeight: FontWeight.w600,
//                               color: AppColorConstants.white
//                           ),
//                           textAlign: TextAlign.center,
//                         ),
//                         SizedBox(height: 4.h),
//                         Text(
//                           descriptionTextList[sliderNotifier.currentIndex],
//                           style: TextStyle(
//                               fontSize: 10.h,
//                               color: AppColorConstants.white
//                           ),
//                           textAlign: TextAlign.center,
//                         ),
//                         SizedBox(height: 15.h),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: List.generate(sliderImageList.length, (index) => AnimatedContainer(
//                             duration: const Duration(milliseconds: 100),
//                             margin: EdgeInsets.symmetric(horizontal: 0.5.w),
//                             height: 2.w,
//                             width: sliderNotifier.currentIndex == index ? 5.w : 2.w,
//                             decoration: BoxDecoration(
//                               color: sliderNotifier.currentIndex == index ? AppColorConstants.white : AppColorConstants.hintTextGeryColor,
//                               borderRadius: BorderRadius.circular(5.w),
//                             ),
//                           ),
//                           ),
//                         )
//                       ],
//                     );
//                   },
//                 )
//               ],
//             ),
//           ),
//         ],
//       )
//     );
//   }
// }


class SliderWidget extends StatefulWidget {
  const SliderWidget({super.key});

  @override
  State<SliderWidget> createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  final List<String> titleTextList = [
    'Take Control of Your Finances with Confidence',
    'Take Control of Your Finances with Confidence',
    'Take Control of Your Finances with Confidence',
  ];
  final List<String> descriptionTextList = [
    'MCS empowers you to effortlessly manage all your finances in one place. We combine industry-\nleasing expertise with powerful features to help you',
    'MCS empowers you to effortlessly manage all your finances in one place. We combine industry-\nleasing expertise with powerful features to help you',
    'MCS empowers you to effortlessly manage all your finances in one place. We combine industry-\nleasing expertise with powerful features to help you',
  ];
  final List<String> sliderImageList = [
    AssetConstant.homeSliderImg1,
    AssetConstant.homeSliderImg1,
    AssetConstant.homeSliderImg1,
  ];

  final CarouselController _controller = CarouselController();
  late CloudSignInSliderNotifier sliderIndexNotifier;

  @override
  void initState() {
    sliderIndexNotifier=Provider.of<CloudSignInSliderNotifier>(context,listen: false);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            Image(
                fit: BoxFit.fill,
                height: double.infinity,
                width: double.infinity,
                image: AssetImage(AssetConstant.homeSliderBg)
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 30.h,horizontal: 10.w),
              child: Column(
                children: [
                  Expanded(
                    child: CarouselSlider.builder(
                      carouselController: _controller,
                      itemCount: sliderImageList.length,
                      itemBuilder: (context, index, realIndex) {
                        return Padding(
                          padding: EdgeInsets.symmetric(vertical: 40.h,horizontal: 10.w),
                          child: Image.asset(
                            sliderImageList[index],
                            fit: BoxFit.fill,
                            width: double.infinity,
                          ),
                        );
                      },
                      options: CarouselOptions(
                        height: double.infinity,
                        autoPlay: true,
                        enlargeCenterPage: true,
                        viewportFraction: 1.0, // for full screen carousel
                        onPageChanged: (index, reason){
                          sliderIndexNotifier.setCurrentIndex(index);
                        },
                      ),
                    ),
                  ),
                  Consumer<CloudSignInSliderNotifier>(
                    builder: (context, sliderNotifier,child){
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            titleTextList[sliderNotifier.currentIndex],
                            style: TextStyle(
                                fontSize: 23.h,
                                fontWeight: FontWeight.w600,
                                color: AppColorConstants.white
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 4.h),
                          Text(
                            descriptionTextList[sliderNotifier.currentIndex],
                            style: TextStyle(
                                fontSize: 10.h,
                                color: AppColorConstants.white
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 15.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: List.generate(sliderImageList.length, (index) => AnimatedContainer(
                              duration: const Duration(milliseconds: 100),
                              margin: EdgeInsets.symmetric(horizontal: 0.5.w),
                              height: 2.w,
                              width: sliderNotifier.currentIndex == index ? 5.w : 2.w,
                              decoration: BoxDecoration(
                                color: sliderNotifier.currentIndex == index ? AppColorConstants.white : AppColorConstants.hintTextGeryColor,
                                borderRadius: BorderRadius.circular(5.w),
                              ),
                            ),
                            ),
                          )
                        ],
                      );
                    },
                  )
                ],
              ),
            ),
          ],
        )
    );
  }
}

