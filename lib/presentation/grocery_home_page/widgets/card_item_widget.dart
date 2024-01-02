import '../models/card_item_model.dart';
import 'package:aladdin_karobar_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CardItemWidget extends StatelessWidget {
  CardItemWidget(
    this.cardItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  CardItemModel cardItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 21.h,
        vertical: 19.v,
      ),
      decoration: AppDecoration.fillYellow.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      width: 269.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: cardItemModelObj?.imageClass,
            height: 56.adaptSize,
            width: 56.adaptSize,
            radius: BorderRadius.circular(
              16.h,
            ),
            margin: EdgeInsets.only(
              top: 12.v,
              bottom: 15.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 49.h,
              bottom: 5.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  cardItemModelObj.text1!,
                  style: CustomTextStyles.titleLargeOnPrimary,
                ),
                Text(
                  cardItemModelObj.text2!,
                  style: CustomTextStyles.headlineMediumOnPrimary,
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "lbl_on_first".tr,
                        style: CustomTextStyles.bodyMediumOnPrimary,
                      ),
                      TextSpan(
                        text: "lbl_03_order".tr,
                        style: CustomTextStyles.labelLargeOnPrimary,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
