import '../models/card2_item_model.dart';
import 'package:aladdin_karobar_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Card2ItemWidget extends StatelessWidget {
  Card2ItemWidget(
    this.card2ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Card2ItemModel card2ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 28.h,
        vertical: 18.v,
      ),
      decoration: AppDecoration.fillPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder12,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 6.v),
          CustomImageView(
            imagePath: ImageConstant.imgSettingsBlueGray200,
            height: 56.adaptSize,
            width: 56.adaptSize,
          ),
          SizedBox(height: 19.v),
          SizedBox(
            width: 98.h,
            child: Divider(),
          ),
          SizedBox(height: 6.v),
          Text(
            card2ItemModelObj.fishText!,
            style: CustomTextStyles.labelLargeGray90001,
          ),
          Text(
            card2ItemModelObj.fromSeaText!,
            style: theme.textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}
