import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theme_test/theme/theme.dart';
import 'package:theme_test/widget/switch_theme_button_widget.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  @override
  Widget build(BuildContext context) {
    final text = context.watch<ThemeProvider>().themeModes == ThemeMode.dark
    ? "DarkTheme"
    : "LightTheme";
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu,),
        title:  Text("hello $text",),
        actions: const [
          SwitchThemeButtonWidget(),
        ],
      ),
      body: Column(
        children: [
          const CircleAvatar(
            radius: 42,
            child: CircleAvatar(
              radius: 32,
              child: Image(image: AssetImage('images/easyhome.png'),),),
          ),
          const SizedBox(height: 16,),
          const Text("Samir",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),
          const SizedBox(height: 10,),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Badge(child: Icon(Icons.location_on),),
              Text("Oran",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
            ],
          ),
          const Text("i make ideas into reality with help of GOD",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Text("36",style: TextStyle(fontSize: 28,fontWeight: FontWeight.w700),),
                  Text("posts",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),),
                ],
              ),
              Column(
                children: [
                  Text("3.5k",style: TextStyle(fontSize: 28,fontWeight: FontWeight.w700),),
                  Text("Likes",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),),
                ],
              ),
              Column(
                children: [
                  Text("15K",style: TextStyle(fontSize: 28,fontWeight: FontWeight.w700),),
                  Text("folowers",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 2,
           width: double.infinity,
            child: Container(color: Colors.grey.shade400,),
          ),
          const Text("Photos")
        ]
      ),
    bottomNavigationBar: const Material(
      elevation: 5,
      child: SizedBox(
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
          Icon(Icons.home),
          Icon(Icons.category),
          Icon(Icons.search),
          Icon(Icons.settings),
        ],),
      ),
    ),
    );
  }
}
