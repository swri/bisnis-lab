import 'package:bisnis_lab/controllers/login_controller.dart';
import 'package:bisnis_lab/views/pages/loading_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:bisnis_lab/routes/app_routes.dart';
import 'package:bisnis_lab/routes/name_routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final controller = Get.put(LoginController(), permanent: true);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: controller.streamAuthStatus,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.active) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              scaffoldBackgroundColor: Colors.white,
              primarySwatch: Colors.orange,
              sliderTheme: const SliderThemeData(
                trackHeight: 20.0,
                thumbShape: RoundSliderThumbShape(enabledThumbRadius: 0.0),
                thumbColor: Colors.transparent,
              ),
            ),
            initialRoute:
                snapshot.data != null ? RouteName.home : RouteName.login,
            getPages: AppRoutes.pages,
          );
        } else {
          return const LoadingPage();
        }
      },
    );
  }
}
