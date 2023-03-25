import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:bloc_session/scr/core/api/end_points.dart';
import 'package:bloc_session/scr/core/helpers/http_helper.dart';
import 'package:bloc_session/scr/features/users_screen/cubit/users_states.dart';
import 'package:bloc_session/scr/features/users_screen/model/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserCubit extends Cubit<UsersStates> {
  UserCubit() : super(InitialUserState());

  static UserCubit get(BuildContext context) => BlocProvider.of(context);
  void getUsersData() async {
    emit(LoadingUserState());
    final result = await HttpHelper.getData(url: EndPoints.allUsers1);
    if (result['statusCode'] == 200) {
      List<User> users = result['data']['data']
          .map<User>(
            (user) => User.fromJson(user),
          )
          .toList();
      emit(SuccessUserState(usersData: users));
    } else {
      emit(ErrorUserState(msgError: 'something error'));
    }
  }
}
