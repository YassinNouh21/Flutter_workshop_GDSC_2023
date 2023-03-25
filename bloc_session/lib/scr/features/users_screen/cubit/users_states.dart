import 'package:bloc_session/scr/features/users_screen/model/user.dart';

abstract class UsersStates {}

class InitialUserState extends UsersStates {}

class LoadingUserState extends UsersStates {}

class SuccessUserState extends UsersStates {
  final List<dynamic> usersData;
  SuccessUserState({required this.usersData});
}

class ErrorUserState extends UsersStates {
  final String msgError;
  ErrorUserState({required this.msgError});
}
