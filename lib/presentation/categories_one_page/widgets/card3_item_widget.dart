import '../models/card3_item_model.dart';
import 'package:aladdin_karobar_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Card3ItemWidget extends StatelessWidget {
  Card3ItemWidget(
    this.card3ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Card3ItemModel card3ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 167.v,
          width: 137.h,
          padding: EdgeInsets.symmetric(
            horizontal: 39.h,
            vertical: 55.v,
          ),
          decoration: AppDecoration.fillAmber.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder12,
          ),
          child: CustomImageView(
            imagePath: ImageConstant.imgGroup,
            height: 56.adaptSize,
            width: 56.adaptSize,
            alignment: Alignment.center,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 12.v,
            bottom: 9.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                card3ItemModelObj.title!,
                style: CustomTextStyles.titleMediumGray90001,
              ),
              SizedBox(height: 7.v),
              Text(
                card3ItemModelObj.subtitle!,
                style: CustomTextStyles.bodyLargeBluegray600,
              ),
              SizedBox(height: 39.v),
              Text(
                card3ItemModelObj.startingFrom!,
                style: CustomTextStyles.bodyMediumBluegray400_1,
              ),
              SizedBox(height: 9.v),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "lbl_36".tr,
                      style: theme.textTheme.titleMedium,
                    ),
                    TextSpan(
                      text: "lbl_kg".tr,
                      style: CustomTextStyles.bodyLargePrimary,
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
