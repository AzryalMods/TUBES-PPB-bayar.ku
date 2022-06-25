// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tubes_ppb_gabungan/Page/Home_Page/Home.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({ Key? key }) : super(key: key);

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  List<Color> myColor = [
    Colors.red, 
    Colors.green, 
    Colors.blue, 
    Colors.amber
  ];
  Color secColor = Color.fromARGB(255, 236, 236, 236);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: SafeArea(child: Column(
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      child: IconButton(
                          onPressed: () {
                            Navigator.push(
                              context, MaterialPageRoute(
                                builder: (context){
                                  return HomePage();
                                },
                              ),
                            );
                          }, 
                          color: Color.fromARGB(255, 0, 116, 248),
                          icon: Icon(Icons.navigate_before),
                        ),
                    )
                  ],
                ),
              ),

              Expanded(
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.only(top: 36.0, left: 26.0, right: 26.0),
                decoration: BoxDecoration(
                  color: secColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(0.0),
                    topRight: Radius.circular(0.0),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("History Transaction",
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 116, 248),
                        fontSize: 26.0,
                        fontWeight: FontWeight.bold,
                      ),    
                    ),
                      

                      SizedBox(
                        height: 20.0,
                      ),
                      Expanded(
                        child: ListView(
                          children: [
                            listTile(Icons.shopping_cart,Colors.white,"Shopping","Beli Hoodie H&N",255.999),
                            listTile(Icons.payment,Colors.white,"Paymment","Top up berhasil",799.999),
                            listTile(Icons.send,Colors.white,"Kirim","Uang bulanan orang tua",355.555),
                            listTile(Icons.dangerous,Colors.white,"Gagal","Transaksi gagal",55.555),
                            listTile(Icons.shopping_cart,Colors.white,"Shopping","Beli sepatu Nike Air Forced 1 Triple White",755.999),
                            listTile(Icons.payment,Colors.white,"Paymment","Top up berhasil",999.999),
                            listTile(Icons.send,Colors.white,"Kirim","Uang jajan dana",255.555),
                            listTile(Icons.dangerous,Colors.white,"Gagal","Transaksi gagal",15.555),
                            listTile(Icons.shopping_cart,Colors.white,"Shopping","Tiket pesawat",855.999),
                            listTile(Icons.payment,Colors.white,"Paymment","Top up berhasil",999.999),
                            listTile(Icons.send,Colors.white,"Kirim","Uang sedekah bulanan",99.999),
                            listTile(Icons.dangerous,Colors.white,"Gagal","Transaksi gagal",0),
                           
                          ],
                        ))
                  ],
                ),
              ),
            ),

            ],
          )),
        ),
    );
  }
}

Widget listTile(
    IconData icon, Color color, String type, String title, double value){
      return InkWell(
        onTap: () {},
        child: Container(
          margin: EdgeInsets.only(bottom: 16.0),
          padding: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 255, 255, 255),
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 60.0,
                height: 60.0,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 0, 116, 248),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Icon(
                  icon,
                  size: 32.0,
                  color: color,
                  ),
              ),
              SizedBox(
                width: 12.0,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      type,
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 116, 248),
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold,
                        ),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Text(
                      title,
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 116, 248),
                        fontSize: 14.0,
                      ),),
                  ],
                ),
              ),
              Text(
                "Rp.\ $value", 
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 116, 248), 
                  fontSize: 22.0, 
                  fontWeight: FontWeight.bold,
              )),
            ],
          ),
        ),
      );
    }