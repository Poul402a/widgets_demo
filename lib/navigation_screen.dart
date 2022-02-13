import 'package:flutter/material.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({Key? key}) : super(key: key);

  @override
  _NavigationScreenState createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  final _messengerKey = GlobalKey<ScaffoldMessengerState>();

  @override
  Widget build(BuildContext context) {
    final ButtonStyle buttonStyle =
        TextButton.styleFrom(primary: Theme.of(context).colorScheme.onPrimary);

    return MaterialApp(
      scaffoldMessengerKey: _messengerKey,
      home: Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            TextButton(
                onPressed: () {},
                child: const Text('Личный кабинет'),
                style: buttonStyle),
            IconButton(
                tooltip: "Баланс",
                onPressed: () {},
                icon: const Icon(Icons.account_balance_wallet)),
            IconButton(
                tooltip: "Настройки",
                onPressed: () {},
                icon: const Icon(Icons.settings)),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: const BoxDecoration(color: Colors.blue),
                child: Container(
                  height: 200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 100,
                        decoration: const BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(50.0))),
                        child: Image.network(
                            'https://avatars.mds.yandex.net/get-zen_doc/4364496/pub_608152191d12af3ede3bf323_608155d70ddd8a7ee2940308/scale_1200'),
                      ),
                      const Text("Каталог"),
                    ],
                  ),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.one_k),
                title: Text('Мужская одежда'),
                onTap: () {
                  _messengerKey.currentState!.showSnackBar(
                      const SnackBar(content: Text('Переход в мужской раздел')));
                },
              ),
              ListTile(
                leading: const Icon(Icons.two_k),
                title: Text('Женская одежда'),
                onTap: () {
                  _messengerKey.currentState!.showSnackBar(
                      const SnackBar(content: Text('Переход в женский раздел')));
                },
              ),
              ListTile(
                leading: const Icon(Icons.three_k),
                title: Text('Корзина'),
                onTap: () {
                  _messengerKey.currentState!.showSnackBar(
                      const SnackBar(content: Text('Переход в корзину')));
                },
              ),
              const Divider(),
              ListTile(
                leading: const Icon(Icons.settings),
                title: Text('Настройки'),
                onTap: () {
                  _messengerKey.currentState!.showSnackBar(
                      const SnackBar(content: Text('Переход в настройки')));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
