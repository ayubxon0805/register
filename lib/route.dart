import 'package:ayubxon_login_flutter/bloc/login_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RoutePage extends StatefulWidget {
  const RoutePage({super.key});

  @override
  State<RoutePage> createState() => _RoutePageState();
}

class _RoutePageState extends State<RoutePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      appBar: AppBar(
        title: const Text("Route Page"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: BlocBuilder<LoginBloc, LoginState>(
          builder: (context, state) {
            print(' this state is');
            print(state);
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                state is LoginAuthState
                    ?  Text("Sizning ismingiz |${state.name}| ga teng")
                    : const Text(' Ism kiritilmadi! Iltimos qayta urining'),
                   const SizedBox(height: 30,),
                state is LoginAuthState
                    ?  Text("Sizning emailingiz| ${state.email}|  ga teng")
                    : const Text(" Emailingiz kiritilmadi! Iltmos qayta urining")
              ],
            );
          },
        ),
      ),
    );
  }
}
