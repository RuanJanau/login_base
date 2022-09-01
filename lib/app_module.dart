// ignore_for_file: unused_import

import 'package:flutter_modular/flutter_modular.dart';
import 'package:login_base/src/modules/login/home/home_view.dart';
import 'package:login_base/src/modules/login/view/login_view.dart';

import 'src/modules/login/login_module.dart';
import 'src/modules/splash/controller/splash_controller.dart';
import 'src/modules/splash/view/splash_view.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [
    Bind((i) => SplashController()),
  ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const SplashView()),
        ModuleRoute('/login', module: LoginModule()),
        ChildRoute('/home', child: (context, args) => const HomeView()),
      ];
}
