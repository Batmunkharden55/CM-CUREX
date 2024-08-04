import 'package:flutter/material.dart';
import 'package:project_curex_personal/screens/my_screen.dart';
import 'package:project_curex_personal/widgets/currency_card.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('МӨНГӨӨ СОНГОНО УУ'),
          centerTitle: true,
          titleSpacing: 2,
          leading: FlutterLogo(),
          actions: [
            InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const MyScreen()));
            },
            child: const CircleAvatar(
              backgroundImage: AssetImage('lib/assets/profile.JPG'),
            ),
          )
          ],
        ),
        body: const Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Column(
                  children: [
                    CardSelect(mongoZurag: 'assets/china_flag.png', mongoNer: 'Хятад Юана', mongoGadaad: 'CNY', ),
                    CardSelect(mongoZurag: 'assets/us_flag.png', mongoNer: 'Америк Доолор', mongoGadaad: 'USD', ),
                    CardSelect(mongoGadaad: 'KRW', mongoNer: 'Солонгос Воон', mongoZurag: 'assets/korea_flag.png',),
                    CardSelect(mongoZurag: 'assets/japan_flag.png', mongoNer: 'Япон Еэнэ', mongoGadaad: 'JPY', ),
                    CardSelect(mongoZurag: 'assets/russia_flag.png', mongoNer: 'Орос Рүүбэл', mongoGadaad: 'RUB', ),
                    CardSelect(mongoZurag: 'assets/europe_flag.png', mongoNer: 'Европын Евро', mongoGadaad: 'EUR', ),
                    CardSelect(mongoZurag: "assets/uk_flag'.png", mongoNer: 'Англи Паунд', mongoGadaad: 'GBP', ),
                    CardSelect(mongoZurag: 'assets/canada_flag.png', mongoNer: 'Канад Доолор', mongoGadaad: 'CAD', ),
                    CardSelect(mongoZurag: 'assets/australia_flag.png', mongoNer: 'Австрали Доолор', mongoGadaad: 'AUD', ),
                    CardSelect(mongoZurag: 'assets/singapore_flag.png', mongoNer: 'Сингапур Доолор', mongoGadaad: 'SGD', ),
                    CardSelect(mongoZurag: 'assets/hongkong_flag.png', mongoNer: 'Хонг Конг Доолор', mongoGadaad: 'HKD', ),
                    CardSelect(mongoNer: 'Щвецарь Фраанк', mongoZurag: 'assets/switzerland_flag.png', mongoGadaad: 'CHF', ),
                    CardSelect(mongoZurag: 'assets/czechia_flag.png', mongoNer: 'Чех Кроон', mongoGadaad: 'CZK', ),
                  ]
              ),
            ),
          ),
        ),
      ),
    );
  }
}
