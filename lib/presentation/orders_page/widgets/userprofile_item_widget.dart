import '../models/userprofile_item_model.dart';
import 'package:aladdin_karobar_app/core/app_export.dart';
import 'package:aladdin_karobar_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  UserprofileItemWidget(
    this.userprofileItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserprofileItemModel userprofileItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 10.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Opacity(
                opacity: 0.6,
                child: CustomImageView(
                  imagePath: ImageConstant.imgImageIcon,
                  height: 30.adaptSize,
                  width: 30.adaptSize,
                  margin: EdgeInsets.only(
                    top: 2.v,
                    bottom: 7.v,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 26.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      userprofileItemModelObj.freshOrangeText!,
                      style: CustomTextStyles.bodyMediumBluegray600,
                    ),
                    Text(
                      userprofileItemModelObj.priceText!,
                      style: CustomTextStyles.titleSmallBlack900,
                    ),
                  ],
                ),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.only(
                  top: 8.v,
                  bottom: 11.v,
                ),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "lbl_id".tr,
                        style: CustomTextStyles.bodyMediumBluegray400,
                      ),
                      TextSpan(
                        text: " ",
                      ),
                      TextSpan(
                        text: "lbl_765433".tr,
                        style: CustomTextStyles.bodyMediumBlack900_1,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 16.v),
        Padding(
          padding: EdgeInsets.only(
            left: 22.h,
            right: 9.h,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 35.v),
                child: Column(
                  children: [
                    Opacity(
                      opacity: 0.6,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgImageIcon,
                        height: 30.adaptSize,
                        width: 30.adaptSize,
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(right: 41.h),
                      ),
                    ),
                    SizedBox(height: 23.v),
                    Container(
                      height: 39.adaptSize,
                      width: 39.adaptSize,
                      decoration: BoxDecoration(
                        color: appTheme.blueGray100,
                        borderRadius: BorderRadius.circular(
                          19.h,
                        ),
                        border: Border.all(
                          color: theme.colorScheme.onPrimary,
                          width: 3.h,
                          strokeAlign: strokeAlignCenter,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: appTheme.gray9003f,
                            spreadRadius: 2.h,
                            blurRadius: 2.h,
                            offset: Offset(
                              0,
                              4,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 5.v),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "lbl_meet_our_rider".tr,
                            style: CustomTextStyles.bodySmallBluegray400_2,
                          ),
                          TextSpan(
                            text: " ",
                          ),
                          TextSpan(
                            text: "lbl_rakib".tr,
                            style: theme.textTheme.bodySmall,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 28.v),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 140.h,
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "lbl_your_oranges".tr,
                              style:
                                  CustomTextStyles.titleLargeGray90001Regular20,
                            ),
                            TextSpan(
                              text: "lbl_are_on_the_way".tr,
                              style: CustomTextStyles.titleLargeGray90001,
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    SizedBox(height: 10.v),
                    CustomElevatedButton(
                      width: 115.h,
                      text: "lbl_track_order".tr,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 26.v),
      ],
    );
  }
}
