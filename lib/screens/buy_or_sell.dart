import 'package:flutter/material.dart';
import 'package:project_curex_personal/screens/sell.dart';

import 'buy.dart';

class BuyOrSell extends StatefulWidget {
  const BuyOrSell({super.key, required this.deedZurag, required this.doorhUg});
  final String deedZurag;
  final String doorhUg;

  @override
  State<BuyOrSell> createState() => _BuyOrSellState();
}

class _BuyOrSellState extends State<BuyOrSell> {


  final buyController = TextEditingController();

  final sellController = TextEditingController();

  late double buy;

  late double sell;

  @override
  Widget build(BuildContext context) {
    final mySize = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back)),
      ),
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Hero(tag: widget.doorhUg, child: Image.asset(widget.deedZurag)),
              Text(
                widget.doorhUg,
                style: const TextStyle(fontSize: 30),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Buy(buyCurrency: widget.doorhUg,)));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: EdgeInsets.symmetric(
                          vertical: 20, horizontal: mySize/12),
                      child: const Text(
                        'АВАХ УУ',
                        style: TextStyle(color: Colors.white,
                            fontSize: 18),

                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Sell(sell_currency: widget.doorhUg,)));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.red),
                      padding: EdgeInsets.symmetric(
                          vertical: 20, horizontal: mySize/12),
                      child: const Text(
                        'ЗАРАХ УУ',
                        style: TextStyle(color: Colors.white,
                            fontSize: 18),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}