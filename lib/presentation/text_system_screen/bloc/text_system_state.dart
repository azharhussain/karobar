// ignore_for_file: must_be_immutable

part of 'text_system_bloc.dart';

/// Represents the state of TextSystem in the application.
class TextSystemState extends Equatable {
  TextSystemState({this.textSystemModelObj});

  TextSystemModel? textSystemModelObj;

  @override
  List<Object?> get props => [
        textSystemModelObj,
      ];
  TextSystemState copyWith({TextSystemModel? textSystemModelObj}) {
    return TextSystemState(
      textSystemModelObj: textSystemModelObj ?? this.textSystemModelObj,
    );
  }
}
