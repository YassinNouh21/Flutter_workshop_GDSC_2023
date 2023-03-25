import 'package:bloc_session/scr/core/utils/media_query_data.dart';
import 'package:bloc_session/scr/features/users_screen/cubit/user_cubit.dart';
import 'package:bloc_session/scr/features/users_screen/cubit/users_states.dart';
import 'package:bloc_session/scr/features/users_screen/model/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UsersScreen extends StatelessWidget {
  const UsersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserCubit(),
      child: BlocConsumer<UserCubit, UsersStates>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: Text('USERS LIST'),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                UserCubit.get(context).getUsersData();
              },
              child: Icon(Icons.get_app),
            ),
            body: SizedBox(
              width: context.width,
              //height: context.height * 0.5,
              child: state is ErrorUserState
                  ? Text(
                      state.msgError,
                      style: const TextStyle(color: Colors.red),
                    )
                  : state is SuccessUserState
                      ? ListView.builder(
                          itemCount: state.usersData.length,
                          itemBuilder: (context, index) {
                            final User currentUser = state.usersData[index];
                            return Container(
                                margin: EdgeInsets.all(10.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.grey.withOpacity(0.3),
                                ),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.all(20),
                                      child: CircleAvatar(
                                        radius: 30,
                                        backgroundImage:
                                            NetworkImage(currentUser.avatar),
                                      ),
                                    ),
                                    Text(
                                      currentUser.name,
                                      style: TextStyle(fontSize: 20),
                                    )
                                  ],
                                ));
                          })
                      : state is InitialUserState
                          ? Center(child: Text('Please Pressed on Button'))
                          : Center(
                              child: CircularProgressIndicator(),
                            ),
            ),
          );
        },
      ),
    );
  }
}
