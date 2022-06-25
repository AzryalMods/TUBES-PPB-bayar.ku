// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:bayar_ku/Page/History_Page/History.dart';
import 'package:bayar_ku/Page/Home_page/add.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color mainColor = Color.fromARGB(255, 248, 248, 248);
  Color secColor = Color.fromARGB(255, 236, 236, 236);
  Color boxColor = Color(0xFFBCBEDC);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body : SafeArea(
        child: Column(
          mainAxisAlignment:MainAxisAlignment.spaceBetween,
          //creating header
          children: [
            //header
            Container(
              padding: EdgeInsets.all(16.0),
              child: Row(
               children: [
                 const CircleAvatar(
                   radius: 30.0,
                   ),
                   Container(
                     padding: EdgeInsets.only(left: 20.0),
                     child: Column(
                      children: [
                        Text("bayar.KU",
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 116, 248),
                            fontSize:22.0,
                            fontWeight: FontWeight.w500,
                          )),
                      ],
                    ),
                  ), 
                  IconButton(
                          onPressed: () {}, 
                          color: Color.fromARGB(255, 0, 116, 248),
                          icon: Icon(Icons.notifications),
                        ),   
               ],
              ),
            ),
            SizedBox(height: 5.0),
            //data display
            Container(
              child: Column(
                children: [
                  Text(
                    "Total Saldo",
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 116, 248),
                      fontSize: 20.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text("Rp. \250.000",
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 116, 248),
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                  )),

                  SizedBox(height: 20.0),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget> [
                      Container(
                        padding: EdgeInsets.only(left: 80.0),
                        child:Column(
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 0, 116, 248),
                                borderRadius: BorderRadius.all(Radius.circular(18))
                              ),
                        child: IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => AddView(),
                              ),
                            );
                          }, 
                          color: Colors.white,
                          icon: Icon(Icons.add),
                        ),
                        padding: EdgeInsets.all(8),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text("Top up", style: TextStyle(
                              fontWeight: FontWeight.w700, 
                              fontSize: 14, 
                              color: Color.fromARGB(255, 0, 116, 248)),)
                          ],
                        ),
                      ),

                      Container(
                        child:Column(
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                              color: Color.fromARGB(255, 0, 116, 248),
                              borderRadius: BorderRadius.all(Radius.circular(18))
                            ),
                        child: IconButton(
                          onPressed: () {}, 
                          color: Colors.white,
                          icon: Icon(Icons.send),
                        ),
                        padding: EdgeInsets.all(8),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text("Send", style: TextStyle(
                              fontWeight: FontWeight.w700, 
                              fontSize: 14, 
                              color: Color.fromARGB(255, 0, 116, 248)),)
                          ],
                        ),
                      ),

                      Container(
                        child:Column(
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                              color: Color.fromARGB(255, 0, 116, 248),
                              borderRadius: BorderRadius.all(Radius.circular(18))
                            ),
                        child: IconButton(
                          onPressed: () {}, 
                          color: Colors.white,
                          icon: Icon(Icons.payment),
                        ),
                        padding: EdgeInsets.all(8),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text("Pay", style: TextStyle(
                              fontWeight: FontWeight.w700, 
                              fontSize: 14, 
                              color: Color.fromARGB(255, 0, 116, 248)),)
                          ],
                        ),
                      ),

                      Container(
                        padding: EdgeInsets.only(right: 80.0),
                        child:Column(
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 0, 116, 248),
                                borderRadius: BorderRadius.all(Radius.circular(18))
                              ),
                        child: IconButton(
                          onPressed: () {
                            Navigator.push(
                              context, MaterialPageRoute(
                                builder: (context){
                                  return HistoryScreen();
                                },
                              ),
                            );
                          }, 
                          color: Colors.white,
                          icon: Icon(Icons.history),
                        ),   
                        padding: EdgeInsets.all(8),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text("History", style: TextStyle(
                              fontWeight: FontWeight.w700, 
                              fontSize: 14, 
                              color: Color.fromARGB(255, 0, 116, 248)),)
                          ],
                        ),
                      ),

                    ],
                  )
                ],
              ),
            ),

            SizedBox(
              height: 20.0,
            ),
            
            //data transaksi
            Expanded(
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.only(top: 36.0, left: 26.0, right: 26.0),
                decoration: BoxDecoration(
                  color: secColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60.0),
                    topRight: Radius.circular(60.0),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Transaksi Terbaru",
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
                            listTile(Icons.shopping_cart,Colors.white,"Shopping","Buying new clothes",13.66),
                            listTile(Icons.payment,Colors.white,"paymment","kepo lu",13.66),
                            listTile(Icons.send,Colors.white,"kirim","uang jajan dana",13.66),
                            listTile(Icons.dangerous,Colors.white,"gagal","transaksi gagal",13.66),
                          ],
                        ))
                  ],
                ),
              ),
            ),

          ],
        ),
      )
      
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
                        fontSize: 16.0,
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
