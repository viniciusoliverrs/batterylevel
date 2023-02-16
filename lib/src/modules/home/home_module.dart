import 'package:batterylevel/src/modules/home/presentation/controllers/home_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'presentation/pages/home_page.dart';

class HomeModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => HomeController()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      '/',
      child: (_, args) => HomePage(controller: Modular.get()),
    ),
  ];
}