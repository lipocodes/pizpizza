import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pazpizza/blocs/authentication_bloc/authentication_bloc_bloc.dart';
import 'package:user_repository/user_repository.dart';
import 'app_view.dart';

class MyApp extends StatelessWidget {
  final UserRepository userRepository;
  const MyApp(this.userRepository, {super.key});

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider<AuthenticationBlocBloc>(
      create: (context) =>
          AuthenticationBlocBloc(userRepository: userRepository),
      child: const MyAppView(),
    );
  }
}
