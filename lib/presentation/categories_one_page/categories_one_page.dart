import '../categories_one_page/widgets/card3_item_widget.dart';
import 'bloc/categories_one_bloc.dart';
import 'models/card3_item_model.dart';
import 'models/categories_one_model.dart';
import 'package:aladdin_karobar_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class CategoriesOnePage extends StatefulWidget {
  const CategoriesOnePage({Key? key})
      : super(
          key: key,
        );

  @override
  CategoriesOnePageState createState() => CategoriesOnePageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<CategoriesOneBloc>(
      create: (context) => CategoriesOneBloc(CategoriesOneState(
        categoriesOneModelObj: CategoriesOneModel(),
      ))
        ..add(CategoriesOneInitialEvent()),
      child: CategoriesOnePage(),
    );
  }
}

class CategoriesOnePageState extends State<CategoriesOnePage>
    with AutomaticKeepAliveClientMixin<CategoriesOnePage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _buildFreshFromSea(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildFreshFromSea(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 25.v),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 24.h,
                right: 43.h,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BlocSelector<CategoriesOneBloc, CategoriesOneState,
                      CategoriesOneModel?>(
                    selector: (state) => state.categoriesOneModelObj,
                    builder: (context, categoriesOneModelObj) {
                      return ListView.separated(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        separatorBuilder: (
                          context,
                          index,
                        ) {
                          return SizedBox(
                            height: 30.v,
                          );
                        },
                        itemCount:
                            categoriesOneModelObj?.card3ItemList.length ?? 0,
                        itemBuilder: (context, index) {
                          Card3ItemModel model =
                              categoriesOneModelObj?.card3ItemList[index] ??
                                  Card3ItemModel();
                          return Card3ItemWidget(
                            model,
                          );
                        },
                      );
                    },
                  ),
                  SizedBox(height: 18.v),
                  Padding(
                    padding: EdgeInsets.only(right: 69.h),
                    child: Row(
                      children: [
                        Container(
                          height: 167.v,
                          width: 137.h,
                          padding: EdgeInsets.symmetric(
                            horizontal: 19.h,
                            vertical: 14.v,
                          ),
                          decoration: AppDecoration.fillLime.copyWith(
                            borderRadius: BorderRadiusStyle.circleBorder12,
                          ),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgImage154,
                            height: 67.v,
                            width: 89.h,
                            alignment: Alignment.topLeft,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 16.h,
                            top: 104.v,
                            bottom: 9.v,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "lbl_starting_from".tr,
                                style: CustomTextStyles.bodyMediumBluegray400_1,
                              ),
                              SizedBox(height: 10.v),
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
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
