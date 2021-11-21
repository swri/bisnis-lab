import 'package:bisnis_lab/controllers/login_controller.dart';
import 'package:bisnis_lab/views/widgets/const.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final email = TextEditingController();
    final password = TextEditingController();
    return Scaffold(
      body: ListView(
        children: [
          Image.asset(
            "assets/logo.png",
            width: 300,
            height: 300,
          ),
          const SizedBox(height: Edge.padding),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Center(
                child: Text("Masuk", style: Font.logintext),
              ),
              Center(
                child: Text(" | ", style: Font.logintext),
              ),
              Center(
                child: Text("Daftar", style: Font.logintext),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(Edge.padding),
            child: TextField(
              controller: email,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                labelText: "Email",
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(Edge.padding),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(Edge.padding),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(Edge.padding),
            child: TextField(
              controller: password,
              obscureText: true,
              textInputAction: TextInputAction.done,
              decoration: InputDecoration(
                labelText: "Password",
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(Edge.padding),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(Edge.padding),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 60.0, vertical: Edge.padding),
            child: ElevatedButton(
              onPressed: () => controller.login(
                email.text,
                password.text,
              ),
              child: const Padding(
                padding: EdgeInsets.all(Edge.padding),
                child: Text(
                  "Masuk",
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(Edge.padding),
            child: Text("Lupa kata sandi?"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Expanded(
                child: Divider(
                  color: Colors.black,
                  height: 25,
                  thickness: 2,
                  indent: 20,
                  endIndent: Edge.padding10,
                ),
              ),
              Text("Atau"),
              Expanded(
                child: Divider(
                  color: Colors.black,
                  height: 25,
                  thickness: 2,
                  indent: Edge.padding10,
                  endIndent: 20,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(Edge.padding),
            child: Column(
              children: [
                Image.asset("assets/facebook.png"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/google.png"),
                    Image.asset("assets/apple.png"),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
