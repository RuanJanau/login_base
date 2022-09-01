import 'package:flutter_modular/flutter_modular.dart';
import 'package:login_base/src/modules/login/view/login_view.dart';

import 'controller/login_controller.dart';

class LoginModule extends Module {
  @override
  List<Bind> get binds => [
        Bind((i) => LoginController()),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const LoginView()),
      ];
}
