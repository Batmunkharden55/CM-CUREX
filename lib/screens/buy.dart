import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_curex_personal/screens/buy_main.dart';

class Buy extends StatefulWidget {
  final String buyCurrency;

  const Buy({super.key, required this.buyCurrency});

  @override
  State<Buy> createState() => _BuyState();
}

class _BuyState extends State<Buy> {

  TextEditingController buyAmountController = TextEditingController();
  late final double buyAmount;
  bool amountWritten = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Хэдэн төгрөгөнд авах вэ?'),
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
              Text('${widget.buyCurrency} авах төгрөгний хэмжээгээ бичнэ үү',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,

              ),
              textAlign: TextAlign.center,),
              SizedBox(
                height: 40,
              ),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  labelText: 'Төгрөгний хэмжээ', // Adds a label above the input field
                  hintText: '0',
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blue, // Color of the border when the field is focused
                      width: 2, // Width of the border when the field is focused
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey, // Color of the border when the field is not focused
                      width: 1, // Width of the border when the field is not focused
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  filled: true, // Makes the background color visible
                  fillColor: Colors.grey[200], // Background color of the field
                  prefixIcon: Icon(Icons.money), // Adds an icon inside the field at the start
                  suffixText: 'төгрөг'
                ),
                keyboardType: TextInputType.number,
                controller: buyAmountController,
                onFieldSubmitted: (value){
                  buyAmount = double.parse(value);
                  setState(() {
                    amountWritten = true;
                  });
                },

              ),
              SizedBox(
                height: 100,
              ),
              amountWritten

              ?InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>BuyMainScreen()));
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 100),
                  child: Text('Авах', style: TextStyle(
                    color: Colors.white,
                    fontSize: 20
                  ),

                  ),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10)
                  ),
                ),
              )
                  :Container(),
            ],
          ),
        ),
      )
    );
  }
}