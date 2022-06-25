import 'package:flutter/material.dart';

class TopupView extends StatefulWidget {
  TopupView({Key? key}) : super(key: key);

  @override
  _TopupViewState createState() => _TopupViewState();
}

class _TopupViewState extends State<TopupView> {
  List<String> MataUang = [
    "Rp",
    "USD",
  ];

String dropdownValue = "Rp";
TextEditingController _amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DropdownButton(
            value: dropdownValue,
            onChanged: (String? value) {
              setState(() {
                dropdownValue = value!;
              });
            },
            items: MataUang.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
          Container(
            width: MediaQuery.of(context).size.width / 1.3,
            child: TextFormField(
              controller: _amountController,
              decoration: InputDecoration(
                labelText: "Total TopUp",
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width / 1.4,
            height: 45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: Colors.white,
            ),
            child: MaterialButton(
              onPressed: () async {
                await addSaldo(dropdownValue, _amountController.text);
                Navigator.of(context).pop();
              },
              child: Text("Top Up"),
            ),
          ),
        ],
      ),
    );
  }

  addSaldo(String dropdownValue, String text) {}
}