import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/services.dart';
import 'package:sonda/core/constants/styles.dart';
import 'package:sonda/ui/screens/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    const Sonda(),
  );
}

class Sonda extends StatelessWidget {
  const Sonda({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return ProviderScope(
      child: MaterialApp(
        title: 'Sonda',
        theme: ThemeData(
          scaffoldBackgroundColor: globalBackgroundColor,
          fontFamily: 'AtHaussStd',
        ),
        initialRoute: '/homeScreen',
        routes: {
          '/homeScreen': (context) => const HomeScreen(),
        },
        builder: EasyLoading.init(),
      ),
    );
  }
}
