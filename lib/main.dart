import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';
import './views/nav.dart';
import './views/login.dart';
import './service/service_methods.dart';
import './provide/token.dart';
import 'package:provide/provide.dart';

void main() {
  var providers = Providers()..provide(Provider.function((context) => Token()));
    runApp(ProviderNode(
      providers: providers,
      child: MyApp(),
    ));
} 
// void main(){
//    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
//     .then((_) {
//       runApp(new MyApp());
//     });
// }



 class MyApp extends StatefulWidget {
   @override
   _MyAppState createState() => _MyAppState();
 }
 
 class _MyAppState extends State<MyApp> {
  String token;
   @override
   void initState() {
     getToken().then((data){
       print('token:$token');
       setState(() {
         token=data['token'];
       });
     });
   // Provide.value<Token>(context).change();
    

     super.initState();
   }

   @override
   Widget build(BuildContext context) {
       //Provide.value(context).change();
      return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home:// token==null?Login():BottomNavigationWidget()
      Login()
      //  Provide<Token>(
      //   builder: (context,child,token){
      //     return Token().token==null?Login():BottomNavigationWidget();
      //   },
      // )
    );
   }
 }


