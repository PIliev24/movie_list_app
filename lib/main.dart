import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:movies_app/routes/routes.dart';

import 'configuration/hive_setup.dart';
import 'configuration/locator.dart';

void main() async {
  await dotenv.load(fileName: '.env');
  WidgetsFlutterBinding.ensureInitialized();
  setup();
  await Hive.initFlutter();
  await registerAdapters();
  await openBoxes();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: RouteManager.homePage,
        onGenerateRoute: RouteManager.generateRoute,
      ),
    );
  }
}
