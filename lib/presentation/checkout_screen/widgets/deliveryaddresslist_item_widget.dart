import '../models/deliveryaddresslist_item_model.dart';
import 'package:aladdin_karobar_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DeliveryaddresslistItemWidget extends StatelessWidget {
  DeliveryaddresslistItemWidget(
    this.deliveryaddresslistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  DeliveryaddresslistItemModel deliveryaddresslistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 18.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.outlineYellow.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder12,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 4.v),
                child: Text(
                  deliveryaddresslistItemModelObj.homeText!,
                  style: theme.textTheme.bodyMedium,
                ),
              ),
              CustomImageView(
                imagePath: deliveryaddresslistItemModelObj?.checkmarkImage,
                height: 22.adaptSize,
                width: 22.adaptSize,
                margin: EdgeInsets.only(top: 2.v),
              ),
            ],
          ),
          SizedBox(height: 14.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                deliveryaddresslistItemModelObj.addressText!,
                style: CustomTextStyles.titleSmallBlack900,
              ),
              Padding(
                padding: EdgeInsets.only(top: 3.v),
                child: Text(
                  deliveryaddresslistItemModelObj.editText!,
                  style: CustomTextStyles.labelLargePrimary,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
