import 'package:flutter/material.dart';

class SendView extends StatefulWidget {
  SendView({Key? key}) : super(key: key);

  @override
  _SendViewState createState() => _SendViewState();
}

class _SendViewState extends State<SendView> {
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
                labelText: "Nominal",
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width / 1.3,
            child: TextFormField(
              controller: _amountController,
              decoration: InputDecoration(
                labelText: "Nomor Rekening",
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
              child: Text("Transfer"),
            ),
          ),
        ],
      ),
    );
  }

  addSaldo(String dropdownValue, String text) {}
}