import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobiledata_usage/core/colors.dart';
import 'package:mobiledata_usage/presentation/pages/index_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  ///----------------For Jio----------------
  /* final SmsSender sender =  SmsSender();
  const String address = '199';
  final SmsMessage message =  SmsMessage(address, 'BAL');
  sender.sendSms(message);
  final SmsReceiver receiver = SmsReceiver();
  receiver.onSmsReceived.listen((SmsMessage msg) {
    final String totalGB = msg.body.split(':')[3].split('GB')[1].split('of').last;
    final String remainingGB = msg.body.split(':')[3].split('GB')[0];
    print('${remainingGB}GB/${totalGB}GB');
  });
  */
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: kSwatch2, systemNavigationBarColor: kSwatch2));
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme:
            ThemeData.light().copyWith(textTheme: GoogleFonts.latoTextTheme()),
        home: IndexPage());
  }
}
