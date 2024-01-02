import '../models/userprofilelist1_item_model.dart';
import 'package:aladdin_karobar_app/core/app_export.dart';
import 'package:aladdin_karobar_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Userprofilelist1ItemWidget extends StatelessWidget {
  Userprofilelist1ItemWidget(
    this.userprofilelist1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofilelist1ItemModel userprofilelist1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Opacity(
          opacity: 0.6,
          child: CustomImageView(
            imagePath: ImageConstant.imgImageIconBlueGray200,
            height: 48.adaptSize,
            width: 48.adaptSize,
            margin: EdgeInsets.only(bottom: 38.v),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 17.h,
            top: 2.v,
            bottom: 3.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                userprofilelist1ItemModelObj.bananasText!,
                style: CustomTextStyles.bodyMediumBluegray600,
              ),
              SizedBox(height: 1.v),
              Text(
                userprofilelist1ItemModelObj.priceText!,
                style: CustomTextStyles.titleSmallBlack900,
              ),
              SizedBox(height: 18.v),
              Text(
                userprofilelist1ItemModelObj.dateText!,
                style: CustomTextStyles.bodyMediumBluegray400_1,
              ),
            ],
          ),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.only(top: 11.v),
          child: Column(
            children: [
              RichText(
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
              SizedBox(height: 28.v),
              CustomElevatedButton(
                height: 26.v,
                width: 74.h,
                text: "lbl_success".tr,
                buttonStyle: CustomButtonStyles.fillPrimaryTL6,
                buttonTextStyle: CustomTextStyles.labelLargePrimary,
                alignment: Alignment.centerRight,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
