// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'userprofile_item_model.dart';

/// This class defines the variables used in the [orders_page],
/// and is typically used to hold data that is passed between different parts of the application.
class OrdersModel extends Equatable {
  OrdersModel({this.userprofileItemList = const []}) {}

  List<UserprofileItemModel> userprofileItemList;

  OrdersModel copyWith({List<UserprofileItemModel>? userprofileItemList}) {
    return OrdersModel(
      userprofileItemList: userprofileItemList ?? this.userprofileItemList,
    );
  }

  @override
  List<Object?> get props => [userprofileItemList];
}
