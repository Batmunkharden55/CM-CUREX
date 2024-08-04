import 'package:flutter/material.dart';
import 'package:project_curex_personal/screens/sell_main.dart';

class Sell extends StatefulWidget {
  final String sell_currency;

  const Sell({super.key, required this.sell_currency});

  @override
  State<Sell> createState() => _SellState();
}

class _SellState extends State<Sell> {
  TextEditingController sellController = TextEditingController();
  late final double sellAmount;
  bool amountWritten = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Хэдэн ${widget.sell_currency} авах вэ?'),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '${widget.sell_currency} авах хэмжээгээ бичнэ үү',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 40,
              ),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  labelText:
                      '${widget.sell_currency} хэмжээ', // Adds a label above the input field
                  hintText: '0',
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors
                          .blue, // Color of the border when the field is focused
                      width: 2, // Width of the border when the field is focused
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors
                          .grey, // Color of the border when the field is not focused
                      width:
                          1, // Width of the border when the field is not focused
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  filled: true, // Makes the background color visible
                  fillColor: Colors.grey[200], // Background color of the field
                  prefixIcon: Icon(Icons.money),
                ),
                keyboardType: TextInputType.number,
                controller: sellController,
                onFieldSubmitted: (value) {
                  sellAmount = double.parse(value);
                  setState(() {
                    amountWritten = true;
                  });
                },
              ),
              SizedBox(
                height: 100,
              ),
              amountWritten
                  ? InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>SellMainScreen()));
                      },
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 20, horizontal: 100),
                        child: Text(
                          'Зарах',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    )
                  : Container(),
            ],
          ),
        ),
      ),
    );
  }
}
