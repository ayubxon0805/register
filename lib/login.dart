import 'package:ayubxon_login_flutter/bloc/login_bloc.dart';
import 'package:ayubxon_login_flutter/route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController nameCon = TextEditingController();
  TextEditingController emailCon = TextEditingController();

  @override
  Widget build(BuildContext context) {
    void openDetails(BuildContext ctx) {
      Navigator.push(ctx, MaterialPageRoute(builder: (_) {
        return const RoutePage();
      }));
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(18),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.network(
                      'https://www.alisco-it.com/wp-content/uploads/2022/01/Flutter_Featured_Logo.png'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(14),
              child: TextField(
                controller: nameCon,
                decoration: const InputDecoration(
                    hintText: "Name", border: OutlineInputBorder()),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(14),
              child: TextField(
                controller: emailCon,
                decoration: const InputDecoration(
                    hintText: "Email", border: OutlineInputBorder()),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                if (nameCon.text != "" && emailCon.text != "") {
                  BlocProvider.of<LoginBloc>(context)
                      .add(LoginAuthEvent(nameCon.text, emailCon.text));
                }
                openDetails(context);
              },
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size(260, 60),
                  backgroundColor: Colors.blue),
              child: const Text(
                "Save",
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
