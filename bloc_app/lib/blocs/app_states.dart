import 'package:bloc_app/models/user_model.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

@immutable
abstract class UserState extends Equatable {}

// data loading state
class UserLoadingState extends UserState {
  @override
  List<Object?> get props => [];
}

// data loaded state
class UserLoadedState extends UserState {
  UserLoadedState(this.users);

  final List<UserModel> users;

  @override
  List<Object?> get props => [users];
}

// data error loading state
class UserErrorState extends UserState {
  UserErrorState(this.error);

  final String error;

  @override
  List<Object?> get props => [error];
}
