import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pro_graduation/helper/api/dio_helper.dart';
import 'package:pro_graduation/helper/local_cash_helper/cash_hlper.dart';
import 'package:pro_graduation/modules/splash/splash.dart';
import 'package:pro_graduation/provider/provider_auth/provider_regstier/provider_regster.dart';
import 'package:pro_graduation/provider/provider_auth/prvider_login/provider_login.dart';
import 'package:provider/provider.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Cash_Hlper.init();
  DioHelper2.init();

  runApp( MyApp());}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        ChangeNotifierProvider<ProviderLogin>(create: (_) => ProviderLogin()),
        ChangeNotifierProvider<ProviderRegster>(create: (_) => ProviderRegster()),

      ],
      child: MaterialApp(
        title: 'ProGraduation',
        theme: ThemeData(

          primarySwatch: Colors.blue,
        ),
        home: SplashScreen(),
      ),
    );
  }
}
