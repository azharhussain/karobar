import '../models/cardgrid1_item_model.dart';
import 'package:aladdin_karobar_app/core/app_export.dart';
import 'package:aladdin_karobar_app/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Cardgrid1ItemWidget extends StatelessWidget {
  Cardgrid1ItemWidget(
    this.cardgrid1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Cardgrid1ItemModel cardgrid1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 18.v,
      ),
      decoration: AppDecoration.fillPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder12,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 7.v),
          CustomImageView(
            imagePath: ImageConstant.imgSettingsBlueGray200,
            height: 56.adaptSize,
            width: 56.adaptSize,
            margin: EdgeInsets.only(left: 33.h),
          ),
          SizedBox(height: 5.v),
          CustomIconButton(
            height: 24.adaptSize,
            width: 24.adaptSize,
            padding: EdgeInsets.all(6.h),
            decoration: IconButtonStyleHelper.fillPrimary,
            alignment: Alignment.centerRight,
            child: CustomImageView(
              imagePath: ImageConstant.imgPlusOutline3,
            ),
          ),
          SizedBox(height: 22.v),
          Padding(
            padding: EdgeInsets.only(left: 2.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  cardgrid1ItemModelObj.price!,
                  style: CustomTextStyles.titleSmallGray90001,
                ),
                SizedBox(height: 5.v),
                Text(
                  cardgrid1ItemModelObj.productName!,
                  style: theme.textTheme.bodySmall,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
