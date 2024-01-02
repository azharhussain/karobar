import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:aladdin_karobar_app/presentation/track_order_bottomsheet/models/track_order_model.dart';
part 'track_order_event.dart';
part 'track_order_state.dart';

/// A bloc that manages the state of a TrackOrder according to the event that is dispatched to it.
class TrackOrderBloc extends Bloc<TrackOrderEvent, TrackOrderState> {
  TrackOrderBloc(TrackOrderState initialState) : super(initialState) {
    on<TrackOrderInitialEvent>(_onInitialize);
  }

  _onInitialize(
    TrackOrderInitialEvent event,
    Emitter<TrackOrderState> emit,
  ) async {}
}
