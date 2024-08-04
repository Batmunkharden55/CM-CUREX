import 'package:flutter/material.dart';

import '../screens/buy_or_sell.dart';


class CardSelect extends StatelessWidget {
  const CardSelect(
      {super.key,
        required this.mongoZurag,
        required this.mongoNer,
        required this.mongoGadaad});
  final String mongoZurag;
  final String mongoNer;
  final String mongoGadaad;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => BuyOrSell(
                  deedZurag: mongoZurag,
                  doorhUg: mongoNer,
                )));
      },
      child: Container(

        decoration: BoxDecoration(
            color: Colors.grey[300], borderRadius: BorderRadius.circular(10),
             ),
        margin: const EdgeInsets.only(bottom: 10),
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: ListTile(
          leading: Hero(
              tag: mongoNer,
              child: Image.asset(
                mongoZurag,
                width: 50,
              )),
          title: Text(mongoGadaad),
          subtitle: Text(mongoNer),
          trailing: const Icon(Icons.arrow_forward),
          titleAlignment: ListTileTitleAlignment.center,
          horizontalTitleGap: 40,
          titleTextStyle:
          const TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: Colors.black),
          subtitleTextStyle: const TextStyle(fontSize: 15, color: Colors.black),
        ),
      ),
    );
  }
}