import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(MyApp());

class Controller extends GetxController {
  //(1) 選択されたタブの番号
  var selected = 0.obs;
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //(2) PageViewとBottomBarを連動させるための準備
    final PageController pager = PageController();
    var state = Get.put(Controller());

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.pink),
      home: Scaffold(
        //(3) ページ切替機構
        body: PageView(
          controller: pager,
          children: const <Widget>[
            Home(),
            // Menu(),
            // Coupon(),
            Clock(),
            Secret(),
          ],
          onPageChanged: (int i) {
            state.selected.value = i;
          },
        ),
        bottomNavigationBar: Obx(() => BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.access_alarm_outlined), label: 'Clock'),
            BottomNavigationBarItem(
                icon: Icon(Icons.vpn_key), label: 'Secret'),
          ],
          currentIndex: state.selected.value,
          onTap: (int i) {
            state.selected.value = i;
            pager.jumpToPage(i);
          },
        )),
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Text('Home',
          style: TextStyle(color: Colors.white, fontSize: 32.0)),
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [Colors.blueAccent, Colors.white]),
      ),
    );
  }
}

class Clock extends StatelessWidget {
  const Clock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 80,
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 6,
                  child: Container(
                    height: double.infinity,
                    color: Colors.pink,
                    child: Text(''),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Container(
                    height: double.infinity,
                    color: Colors.red,
                    child: Text('お知らせ'),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.lightBlueAccent,
            width: 500,
            height: 300,
          ),
          Container(
            width: double.infinity,
            height: 80,
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 6,
                  child: Container(
                    height: double.infinity,
                    color: Colors.pink,
                    child: Text(''),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: SizedBox(
                    width: 100,
                    height: 100,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        side: BorderSide(
                          color: Colors.white,
                          width: 3,
                        ),
                        onPrimary: Colors.red,
                        elevation: 16,
                      ),
                      child: Text('お知らせ',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              SizedBox(
                width: 100,
                height: 100,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    side: BorderSide(
                      color: Colors.white,
                      width: 3,
                    ),
                    onPrimary: Colors.red,
                    elevation: 16,
                  ),
                  child: Text('お知らせ',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 100,
                height: 100,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    side: BorderSide(
                      color: Colors.white,
                      width: 3,
                    ),
                    onPrimary: Colors.red,
                    elevation: 16,
                  ),
                  child: Text('メニュー',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 100,
                height: 100,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    side: BorderSide(
                      color: Colors.white,
                      width: 3,
                    ),
                    onPrimary: Colors.red,
                    elevation: 16,
                  ),
                  child: Text('クーポン',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              SizedBox(
                width: 100,
                height: 100,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    side: BorderSide(
                      color: Colors.white,
                      width: 3,
                    ),
                    onPrimary: Colors.red,
                    elevation: 16,
                  ),
                  child: Text('お問い合わせ',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
              SizedBox(
                width: 100,
                height: 100,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    side: BorderSide(
                      color: Colors.white,
                      width: 3,
                    ),
                    onPrimary: Colors.red,
                    elevation: 16,
                  ),
                  child: Text('求人情報',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 100,
                height: 100,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    side: BorderSide(
                      color: Colors.white,
                      width: 3,
                    ),
                    onPrimary: Colors.red,
                    elevation: 16,
                  ),
                  child: Text('店舗情報',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            width: double.infinity,
            color: Colors.grey,
            // 表示位置を指定
            child: Text('presented by ぐんまナビ', textAlign: TextAlign.right),
          ),
        ],
      ),
    );
  }
}

class Secret extends StatelessWidget {
  const Secret({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Text('Secret',
          style: TextStyle(color: Colors.white, fontSize: 32.0)),
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [Colors.purpleAccent, Colors.white]),
      ),
    );
  }
}