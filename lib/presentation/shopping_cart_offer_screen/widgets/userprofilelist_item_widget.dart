import '../models/userprofilelist_item_model.dart';
import 'package:aladdin_karobar_app/core/app_export.dart';
import 'package:aladdin_karobar_app/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class UserprofilelistItemWidget extends StatelessWidget {
  UserprofilelistItemWidget(
    this.userprofilelistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserprofilelistItemModel userprofilelistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Opacity(
          opacity: 0.6,
          child: CustomImageView(
            imagePath: ImageConstant.imgImageIcon,
            height: 31.adaptSize,
            width: 31.adaptSize,
            margin: EdgeInsets.only(
              top: 2.v,
              bottom: 24.v,
            ),
          ),
        ),
        Spacer(
          flex: 23,
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 16.v),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                userprofilelistItemModelObj.bananasText!,
                style: CustomTextStyles.titleSmallGray90001Medium,
              ),
              SizedBox(height: 1.v),
              Text(
                userprofilelistItemModelObj.priceText!,
                style: theme.textTheme.bodyMedium,
              ),
            ],
          ),
        ),
        Spacer(
          flex: 76,
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 16.v),
          child: CustomIconButton(
            height: 40.adaptSize,
            width: 40.adaptSize,
            padding: EdgeInsets.all(8.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgArrowDownGray900,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 11.h,
            top: 12.v,
            bottom: 25.v,
          ),
          child: Text(
            userprofilelistItemModelObj.numberText!,
            style: CustomTextStyles.titleSmallGray90001Medium,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 10.h,
            bottom: 16.v,
          ),
          child: CustomIconButton(
            height: 40.adaptSize,
            width: 40.adaptSize,
            padding: EdgeInsets.all(8.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgPlus,
            ),
          ),
        ),
      ],
    );
  }
}
