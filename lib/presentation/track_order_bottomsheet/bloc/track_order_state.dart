// ignore_for_file: must_be_immutable

part of 'track_order_bloc.dart';

/// Represents the state of TrackOrder in the application.
class TrackOrderState extends Equatable {
  TrackOrderState({this.trackOrderModelObj});

  TrackOrderModel? trackOrderModelObj;

  @override
  List<Object?> get props => [
        trackOrderModelObj,
      ];
  TrackOrderState copyWith({TrackOrderModel? trackOrderModelObj}) {
    return TrackOrderState(
      trackOrderModelObj: trackOrderModelObj ?? this.trackOrderModelObj,
    );
  }
}
