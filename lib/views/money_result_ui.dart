import 'package:flutter/material.dart';

class MoneyResultUi extends StatefulWidget {
  //สร้างตัวแปรมารับค่าที่ส่งมา
  double? money;
  int? person;
  double? tip;
  double? moneyshare;

  //เอาตัวแปรที่สร้างไว้มารับค่าที่ส่งมา
  MoneyResultUi({
    super.key,
    this.money,
    this.person,
    this.tip,
    this.moneyshare,
  });

  @override
  State<MoneyResultUi> createState() => _MoneyResultUiState();
}

class _MoneyResultUiState extends State<MoneyResultUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 242, 197, 249),
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(
          'ผลการแชร์เงิน',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 35.0,
                ),
                Image.asset(
                  'assets/images/money.png',
                  width: MediaQuery.of(context).size.width * 0.35,
                ),
                SizedBox(
                  height: 35.0,
                ),
                Text(
                  'จำนวนเงิน',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                Text(
                  widget.money!.toStringAsFixed(2),
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.purple,
                  ),
                ),
                Text(
                  'บาท',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: 35.0,
                ),
                Text(
                  'จำนวนคนที่จะหาร',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                Text(
                  widget.person!.toString(),
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.purple,
                  ),
                ),
                Text(
                  'คน',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: 35.0,
                ),
                Text(
                  'จำนวนเงินทิป',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                Text(
                  widget.tip!.toStringAsFixed(2),
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.purple,
                  ),
                ),
                Text(
                  'บาท',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: 35.0,
                ),
                Text(
                  'สรุปว่าหารกันคนละ',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: 35.0,
                ),
                Text(
                  widget.moneyshare!.toStringAsFixed(2),
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    backgroundColor: Colors.yellow,
                    color: Colors.red,
                  ),
                ),
                SizedBox(
                  height: 35.0,
                ),
                Text(
                  'บาท',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
