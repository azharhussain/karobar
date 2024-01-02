import '../models/cardgrid_item_model.dart';
import 'package:aladdin_karobar_app/core/app_export.dart';
import 'package:aladdin_karobar_app/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CardgridItemWidget extends StatelessWidget {
  CardgridItemWidget(
    this.cardgridItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  CardgridItemModel cardgridItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 17.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.fillPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder12,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 11.v),
          CustomImageView(
            imagePath: cardgridItemModelObj?.userImage,
            height: 56.adaptSize,
            width: 56.adaptSize,
            margin: EdgeInsets.only(left: 35.h),
          ),
          SizedBox(height: 4.v),
          Padding(
            padding: EdgeInsets.only(right: 5.h),
            child: CustomIconButton(
              height: 24.adaptSize,
              width: 24.adaptSize,
              padding: EdgeInsets.all(6.h),
              decoration: IconButtonStyleHelper.fillPrimary,
              alignment: Alignment.centerRight,
              child: CustomImageView(
                imagePath: ImageConstant.imgPlusOutline3,
              ),
            ),
          ),
          SizedBox(height: 11.v),
          Text(
            cardgridItemModelObj.priceText!,
            style: CustomTextStyles.titleSmallGray90001,
          ),
          SizedBox(height: 4.v),
          SizedBox(
            width: 106.h,
            child: Text(
              cardgridItemModelObj.descriptionText!,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodySmall!.copyWith(
                height: 1.33,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
