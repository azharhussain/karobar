import 'bloc/onboarding_v_one_bloc.dart';
import 'models/onboarding_v_one_model.dart';
import 'package:aladdin_karobar_app/core/app_export.dart';
import 'package:aladdin_karobar_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore_for_file: must_be_immutable
class OnboardingVOneScreen extends StatelessWidget {
  OnboardingVOneScreen({Key? key}) : super(key: key);

  PageController pageController = PageController();

  static Widget builder(BuildContext context) {
    return BlocProvider<OnboardingVOneBloc>(
        create: (context) => OnboardingVOneBloc(
            OnboardingVOneState(onboardingVOneModelObj: OnboardingVOneModel()))
          ..add(OnboardingVOneInitialEvent()),
        child: OnboardingVOneScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnboardingVOneBloc, OnboardingVOneState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: appTheme.gray50,
              body: SizedBox(
                  height: SizeUtils.height,
                  width: double.maxFinite,
                  child: Stack(children: [
                    SizedBox(
                        height: SizeUtils.height,
                        child: PageView(
                            controller: pageController,
                            scrollDirection: Axis.horizontal,
                            children: [
                              Container(
                                  height: SizeUtils.height,
                                  width: double.maxFinite,
                                  decoration:
                                      BoxDecoration(color: appTheme.gray50)),
                              Container(
                                  height: SizeUtils.height,
                                  width: double.maxFinite,
                                  decoration: BoxDecoration(
                                      color: theme.colorScheme.primary))
                            ])),
                    Container(
                        padding: EdgeInsets.symmetric(vertical: 60.v),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                  height: 646.v,
                                  child: PageView(
                                      controller: pageController,
                                      scrollDirection: Axis.horizontal,
                                      children: [
                                        Container(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 42.h),
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgGroupBlueGray60001,
                                                      height: 107.adaptSize,
                                                      width: 107.adaptSize,
                                                      alignment:
                                                          Alignment.center,
                                                      margin: EdgeInsets.only(
                                                          top: 39.v)),
                                                  Spacer(),
                                                  SizedBox(
                                                      height: 152.v,
                                                      width: 245.h,
                                                      child: Stack(
                                                          alignment: Alignment
                                                              .bottomLeft,
                                                          children: [
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                child: SizedBox(
                                                                    width:
                                                                        245.h,
                                                                    child: Text(
                                                                        "msg_your_holiday_sh"
                                                                            .tr,
                                                                        maxLines:
                                                                            4,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        style: theme
                                                                            .textTheme
                                                                            .headlineLarge!
                                                                            .copyWith(height: 1.27)))),
                                                            CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgEmoji,
                                                                height: 33
                                                                    .adaptSize,
                                                                width: 33
                                                                    .adaptSize,
                                                                alignment: Alignment
                                                                    .bottomLeft,
                                                                margin: EdgeInsets
                                                                    .only(
                                                                        left: 93
                                                                            .h,
                                                                        bottom:
                                                                            4.v))
                                                          ])),
                                                  Container(
                                                      width: 265.h,
                                                      margin: EdgeInsets.only(
                                                          top: 24.v,
                                                          right: 25.h),
                                                      child: Text(
                                                          "msg_there_s_something"
                                                              .tr,
                                                          maxLines: 3,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          style: CustomTextStyles
                                                              .titleMediumBluegray600
                                                              .copyWith(
                                                                  height:
                                                                      1.22)))
                                                ])),
                                        Container(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 42.h),
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  SizedBox(
                                                      height: 152.v,
                                                      width: 245.h,
                                                      child: Stack(
                                                          alignment: Alignment
                                                              .bottomLeft,
                                                          children: [
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                child: SizedBox(
                                                                    width:
                                                                        245.h,
                                                                    child: Text(
                                                                        "msg_your_holiday_sh"
                                                                            .tr,
                                                                        maxLines:
                                                                            4,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        style: CustomTextStyles
                                                                            .headlineLargeGray50
                                                                            .copyWith(height: 1.27)))),
                                                            CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgEmoji,
                                                                height: 33
                                                                    .adaptSize,
                                                                width: 33
                                                                    .adaptSize,
                                                                alignment: Alignment
                                                                    .bottomLeft,
                                                                margin: EdgeInsets
                                                                    .only(
                                                                        left: 93
                                                                            .h,
                                                                        bottom:
                                                                            4.v))
                                                          ])),
                                                  Container(
                                                      width: 265.h,
                                                      margin: EdgeInsets.only(
                                                          top: 24.v,
                                                          right: 25.h,
                                                          bottom: 46.v),
                                                      child: Text(
                                                          "msg_there_s_something"
                                                              .tr,
                                                          maxLines: 3,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          style: CustomTextStyles
                                                              .titleMediumBluegray20001
                                                              .copyWith(
                                                                  height:
                                                                      1.22))),
                                                  Spacer(),
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgGroupOnprimary,
                                                      height: 107.adaptSize,
                                                      width: 107.adaptSize,
                                                      alignment:
                                                          Alignment.center,
                                                      margin: EdgeInsets.only(
                                                          bottom: 70.v))
                                                ]))
                                      ])),
                              SmoothPageIndicator(
                                  controller: pageController,
                                  count: 2,
                                  axisDirection: Axis.horizontal,
                                  effect: ScrollingDotsEffect(
                                      spacing: 8,
                                      activeDotColor: appTheme.blueGray600,
                                      dotColor: appTheme.blueGray600
                                          .withOpacity(0.44),
                                      dotHeight: 4.v,
                                      dotWidth: 24.h),
                                  onDotClicked: (value) {
                                    pageController.jumpToPage(value);
                                  })
                            ]))
                  ])),
              bottomNavigationBar: _buildGetStartedButton(context)));
    });
  }

  /// Section Widget
  Widget _buildGetStartedButton(BuildContext context) {
    return CustomElevatedButton(
        height: 70.v,
        text: "lbl_get_started".tr,
        margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 32.v),
        buttonTextStyle: CustomTextStyles.titleMediumGray50);
  }

  /// Common widget
  Widget _buildHolidayShoppingStack(
    BuildContext context, {
    required String shoppingText,
  }) {
    return SizedBox(
        height: 152.v,
        width: 245.h,
        child: Stack(alignment: Alignment.bottomLeft, children: [
          Align(
              alignment: Alignment.center,
              child: SizedBox(
                  width: 245.h,
                  child: Text(shoppingText,
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.headlineLargeGray50
                          .copyWith(color: appTheme.gray50, height: 1.27)))),
          CustomImageView(
              imagePath: ImageConstant.imgEmoji,
              height: 33.adaptSize,
              width: 33.adaptSize,
              alignment: Alignment.bottomLeft,
              margin: EdgeInsets.only(left: 93.h, bottom: 4.v))
        ]));
  }
}
