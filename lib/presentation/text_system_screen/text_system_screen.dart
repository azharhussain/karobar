import 'bloc/text_system_bloc.dart';
import 'models/text_system_model.dart';
import 'package:aladdin_karobar_app/core/app_export.dart';
import 'package:flutter/material.dart';

class TextSystemScreen extends StatelessWidget {
  const TextSystemScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<TextSystemBloc>(
      create: (context) => TextSystemBloc(TextSystemState(
        textSystemModelObj: TextSystemModel(),
      ))
        ..add(TextSystemInitialEvent()),
      child: TextSystemScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TextSystemBloc, TextSystemState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: 753.h,
              child: Column(
                children: [
                  SizedBox(height: 206.v),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 88.h,
                          right: 386.h,
                          bottom: 160.v,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Opacity(
                              opacity: 0.5,
                              child: Padding(
                                padding: EdgeInsets.only(left: 2.h),
                                child: Text(
                                  "lbl_heading_01".tr.toUpperCase(),
                                  style:
                                      CustomTextStyles.titleSmallInterGray90002,
                                ),
                              ),
                            ),
                            SizedBox(height: 35.v),
                            Padding(
                              padding: EdgeInsets.only(left: 2.h),
                              child: Text(
                                "lbl_h1_bold_30px".tr,
                                style:
                                    CustomTextStyles.headlineLargeGray90002_1,
                              ),
                            ),
                            SizedBox(height: 27.v),
                            Padding(
                              padding: EdgeInsets.only(left: 2.h),
                              child: Text(
                                "msg_h1_semibold_30px".tr,
                                style: CustomTextStyles.headlineLargeGray90002,
                              ),
                            ),
                            SizedBox(height: 27.v),
                            Padding(
                              padding: EdgeInsets.only(left: 2.h),
                              child: Text(
                                "lbl_h1_medium_30px".tr,
                                style: CustomTextStyles
                                    .headlineLargeGray90002Medium,
                              ),
                            ),
                            SizedBox(height: 27.v),
                            Padding(
                              padding: EdgeInsets.only(left: 2.h),
                              child: Text(
                                "lbl_h1_regular_30px".tr,
                                style: CustomTextStyles
                                    .headlineLargeGray90002Regular,
                              ),
                            ),
                            SizedBox(height: 96.v),
                            Opacity(
                              opacity: 0.5,
                              child: Padding(
                                padding: EdgeInsets.only(left: 2.h),
                                child: Text(
                                  "lbl_heading_02".tr.toUpperCase(),
                                  style:
                                      CustomTextStyles.titleSmallInterGray90002,
                                ),
                              ),
                            ),
                            SizedBox(height: 34.v),
                            Padding(
                              padding: EdgeInsets.only(left: 2.h),
                              child: Text(
                                "lbl_h2_bold_26px".tr,
                                style: CustomTextStyles.headlineMediumGray90002,
                              ),
                            ),
                            SizedBox(height: 26.v),
                            Padding(
                              padding: EdgeInsets.only(left: 2.h),
                              child: Text(
                                "msg_h2_semibold_26px".tr,
                                style: CustomTextStyles
                                    .headlineMediumGray90002SemiBold,
                              ),
                            ),
                            SizedBox(height: 26.v),
                            Padding(
                              padding: EdgeInsets.only(left: 2.h),
                              child: Text(
                                "lbl_h2_medium_26px".tr,
                                style: CustomTextStyles
                                    .headlineMediumGray90002Medium,
                              ),
                            ),
                            SizedBox(height: 26.v),
                            Padding(
                              padding: EdgeInsets.only(left: 2.h),
                              child: Text(
                                "msg_h2_regular_26px".tr,
                                style: CustomTextStyles
                                    .headlineMediumGray90002Regular,
                              ),
                            ),
                            SizedBox(height: 132.v),
                            Opacity(
                              opacity: 0.5,
                              child: Padding(
                                padding: EdgeInsets.only(left: 2.h),
                                child: Text(
                                  "lbl_heading_03".tr.toUpperCase(),
                                  style:
                                      CustomTextStyles.titleSmallInterGray90002,
                                ),
                              ),
                            ),
                            SizedBox(height: 34.v),
                            Padding(
                              padding: EdgeInsets.only(left: 2.h),
                              child: Text(
                                "lbl_h3_bold_20px".tr,
                                style: CustomTextStyles.titleLargeGray90002,
                              ),
                            ),
                            SizedBox(height: 28.v),
                            Padding(
                              padding: EdgeInsets.only(left: 2.h),
                              child: Text(
                                "msg_h3_semibold_20px".tr,
                                style: CustomTextStyles.titleLargeGray9000220,
                              ),
                            ),
                            SizedBox(height: 28.v),
                            Padding(
                              padding: EdgeInsets.only(left: 2.h),
                              child: Text(
                                "lbl_h3_medium_20px".tr,
                                style:
                                    CustomTextStyles.titleLargeGray90002Medium,
                              ),
                            ),
                            SizedBox(height: 28.v),
                            Padding(
                              padding: EdgeInsets.only(left: 2.h),
                              child: Text(
                                "msg_h3_regular_20px".tr,
                                style:
                                    CustomTextStyles.titleLargeGray90002Regular,
                              ),
                            ),
                            SizedBox(height: 95.v),
                            Opacity(
                              opacity: 0.5,
                              child: Padding(
                                padding: EdgeInsets.only(left: 2.h),
                                child: Text(
                                  "lbl_heading_04".tr.toUpperCase(),
                                  style:
                                      CustomTextStyles.titleSmallInterGray90002,
                                ),
                              ),
                            ),
                            SizedBox(height: 33.v),
                            Padding(
                              padding: EdgeInsets.only(left: 2.h),
                              child: Text(
                                "msg_h4_h4_bold_18px".tr,
                                style: CustomTextStyles.titleMediumGray9000218,
                              ),
                            ),
                            SizedBox(height: 27.v),
                            Padding(
                              padding: EdgeInsets.only(left: 2.h),
                              child: Text(
                                "msg_h4_semibold_18px".tr,
                                style: CustomTextStyles
                                    .titleMediumGray90002SemiBold,
                              ),
                            ),
                            SizedBox(height: 27.v),
                            Padding(
                              padding: EdgeInsets.only(left: 2.h),
                              child: Text(
                                "lbl_h4_medium_18px".tr,
                                style: CustomTextStyles
                                    .titleMediumGray90002Medium18,
                              ),
                            ),
                            SizedBox(height: 27.v),
                            Padding(
                              padding: EdgeInsets.only(left: 2.h),
                              child: Text(
                                "msg_h4_regular_18px".tr,
                                style: CustomTextStyles.bodyLargeGray9000218,
                              ),
                            ),
                            SizedBox(height: 109.v),
                            Opacity(
                              opacity: 0.5,
                              child: Padding(
                                padding: EdgeInsets.only(left: 2.h),
                                child: Text(
                                  "lbl_body_01".tr.toUpperCase(),
                                  style:
                                      CustomTextStyles.titleSmallInterGray90002,
                                ),
                              ),
                            ),
                            SizedBox(height: 27.v),
                            Padding(
                              padding: EdgeInsets.only(left: 2.h),
                              child: Text(
                                "msg_body_1_semibold_16px".tr,
                                style: CustomTextStyles.titleMediumGray90002,
                              ),
                            ),
                            SizedBox(height: 18.v),
                            Padding(
                              padding: EdgeInsets.only(left: 2.h),
                              child: Text(
                                "msg_body_1_medium_16px".tr,
                                style:
                                    CustomTextStyles.titleMediumGray90002Medium,
                              ),
                            ),
                            SizedBox(height: 18.v),
                            Padding(
                              padding: EdgeInsets.only(left: 2.h),
                              child: Text(
                                "msg_body_2_regular_16px".tr,
                                style: CustomTextStyles.bodyLargeGray90002,
                              ),
                            ),
                            SizedBox(height: 77.v),
                            Opacity(
                              opacity: 0.5,
                              child: Padding(
                                padding: EdgeInsets.only(left: 2.h),
                                child: Text(
                                  "lbl_body_02".tr.toUpperCase(),
                                  style:
                                      CustomTextStyles.titleSmallInterGray90002,
                                ),
                              ),
                            ),
                            SizedBox(height: 39.v),
                            Padding(
                              padding: EdgeInsets.only(left: 2.h),
                              child: Text(
                                "msg_body_02_semibold_14px".tr,
                                style: CustomTextStyles.titleSmallGray90002_1,
                              ),
                            ),
                            SizedBox(height: 15.v),
                            Text(
                              "msg_body_02_medium_14px".tr,
                              style: CustomTextStyles.titleSmallGray90002,
                            ),
                            SizedBox(height: 15.v),
                            Padding(
                              padding: EdgeInsets.only(left: 2.h),
                              child: Text(
                                "msg_body_02_regular_14px".tr,
                                style: CustomTextStyles.bodyMediumGray90002,
                              ),
                            ),
                            SizedBox(height: 136.v),
                            Opacity(
                              opacity: 0.5,
                              child: Padding(
                                padding: EdgeInsets.only(left: 2.h),
                                child: Text(
                                  "lbl_label".tr.toUpperCase(),
                                  style:
                                      CustomTextStyles.titleSmallInterGray90002,
                                ),
                              ),
                            ),
                            SizedBox(height: 34.v),
                            Padding(
                              padding: EdgeInsets.only(left: 2.h),
                              child: Text(
                                "msg_label_medium_12px".tr,
                                style: CustomTextStyles.labelLargeGray90002,
                              ),
                            ),
                            SizedBox(height: 29.v),
                            Padding(
                              padding: EdgeInsets.only(left: 2.h),
                              child: Text(
                                "msg_label_regular_12px".tr,
                                style: CustomTextStyles.bodySmallGray90002,
                              ),
                            ),
                            SizedBox(height: 99.v),
                            Opacity(
                              opacity: 0.5,
                              child: Padding(
                                padding: EdgeInsets.only(left: 2.h),
                                child: Text(
                                  "lbl_button".tr.toUpperCase(),
                                  style:
                                      CustomTextStyles.titleSmallInterGray90002,
                                ),
                              ),
                            ),
                            SizedBox(height: 34.v),
                            Padding(
                              padding: EdgeInsets.only(left: 2.h),
                              child: Text(
                                "lbl_button_1_14px".tr,
                                style: CustomTextStyles.titleSmallGray90002_1,
                              ),
                            ),
                            SizedBox(height: 28.v),
                            Padding(
                              padding: EdgeInsets.only(left: 2.h),
                              child: Text(
                                "lbl_button_2_12px".tr,
                                style: CustomTextStyles.titleSmallGray90002,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
