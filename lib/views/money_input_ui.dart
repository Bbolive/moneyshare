import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MoneyInputUi extends StatefulWidget {
  const MoneyInputUi({super.key});

  @override
  State<MoneyInputUi> createState() => _MoneyInputUiState();
}

class _MoneyInputUiState extends State<MoneyInputUi> {
  //ตัวแปรใช้กับ checkbok 
  bool isTip = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title : Text(
          'แชร์เงินกันเถอะ',
          style: TextStyle(
            color: Colors.white,
            ),    
          ),
          centerTitle: true,
        ), 
        body: SingleChildScrollView(
          child: Padding(
            padding : EdgeInsets.only(
              left: 45.0,
              right: 45.0,
            ),
          child: Column(
              children: [
                SizedBox(
                  height: 50.0,
                ),
                Image.asset(
                'assets/images/money.png',
                width: MediaQuery.of(context).size.width * 0.35,
                ),
                SizedBox(
                  height: 35.0,
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.purple,
                      ),
                    ),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                        color: Colors.purple,
                      ),
                    ),
                    prefixIcon: Icon(
                      FontAwesomeIcons.moneyBill1Wave,
                      color: Colors.purple,
                    ),
                    hintText: 'ป้อนจำนวนเงิน (บาท)',
                    hintStyle: TextStyle(
                      color: Colors.grey[400],
                    ),
                  ),
                ),
                SizedBox(
                  height: 35.0,
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.purple,
                      ),
                    ),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                        color: Colors.purple,
                      ),
                    ),
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.purple,
                    ),
                    hintText: 'ป้อนจำนวนคน (คน)',
                    hintStyle: TextStyle(
                      color: Colors.grey[400],
                    ),
                  ),
                ),
                SizedBox(
                  height: 50.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Checkbox(
                      onChanged: (paramValue) {
                        setState(() {
                          isTip = paramValue!;
                        });
                      },
                      value: isTip,
                      activeColor: Colors.purple,
                      checkColor: Colors.white,
                      focusColor: Colors.purple,
                      side: BorderSide(
                        color: Colors.purple,
                      ),
                    ),
                    Text(
                      'ให้ทิปพนักงานเสริฟ์',
                    )
                  ],
                ),
                SizedBox(
                  height: 22.0,
                ),
                TextField(
                  enabled: isTip,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.purple,
                      ),
                    ),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                        color: Colors.purple,
                      ),
                    ),
                    prefixIcon: Icon(
                      FontAwesomeIcons.coins,
                      color: Colors.purple,
                    ),
                    hintText: 'ป้อนจำนวนเงินทิป (บาท)',
                    hintStyle: TextStyle(
                      color: Colors.grey[400],
                    ),
                  ),
                ),
                SizedBox(
                  height: 35.0,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'คำนวณ',   
                    style: TextStyle(
                      color: Colors.white
                    ),         
                  ),
                  style: ElevatedButton.styleFrom(
                     backgroundColor : Colors.purple,
                     fixedSize: Size(
                      MediaQuery.of(context).size.width ,50.0,
                     ),
                     shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        8.0,
                      ),
                     ),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(
                    Icons.cancel_outlined,
                    color: Colors.white,
                  ),
                  label: Text(
                    'ยกเลิก',
                    style: TextStyle(
                      color: Colors.white
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                     backgroundColor : Colors.red,
                     fixedSize: Size(
                      MediaQuery.of(context).size.width ,50.0,
                     ),
                     shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        8.0,
                      ),
                     ),
                  ),
                ),
                SizedBox(
                  height: 35.0,
                ),
                Text(
                  'Create by NinniN SAU',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
  }
}