import 'package:flutter/material.dart';

class Mydatepicker extends StatefulWidget {
  const Mydatepicker({Key? key}) : super(key: key);

  @override
  State<Mydatepicker> createState() => _MydatepickerState();
}

class _MydatepickerState extends State<Mydatepicker> {
  TextEditingController dateController = TextEditingController();
  DateTime? selectedDate;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Date Picker"),
      ),
      body: Container(
        padding: EdgeInsets.all(8),
        child: InkWell(
          onTap: () async {
            DateTime? pickedDate = await showDatePicker(
              context: context,
              initialDate: selectedDate ?? DateTime.now(),
              firstDate: DateTime(1950),
              lastDate: DateTime(2100),
            );

            if (pickedDate != null && pickedDate != selectedDate) {
              setState(() {
                selectedDate = pickedDate;
              });
              debugPrint("Date Picker: $pickedDate");
            }
          },
          child: TextFormField(
            initialValue: "2024-01-31",
            maxLength: 10,
            enabled: false,
            decoration: const InputDecoration(
              labelText: "Tanggal Lahir",
              labelStyle: TextStyle(color: Colors.blueGrey),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.blueGrey),
              ),
              suffixIcon: Icon(Icons.date_range),
              helperText: "Pilih tanggal lahir anda",
            ),
            onChanged: (value) {},
          ),
        ),
      ),
    );
  }
}
