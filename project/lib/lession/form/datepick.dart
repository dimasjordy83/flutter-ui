import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Mydatepick extends StatefulWidget {
  const Mydatepick({Key? key}) : super(key: key);

  @override
  State<Mydatepick> createState() => _MydatepickState();
}

class _MydatepickState extends State<Mydatepick> {
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
                dateController.text =
                    DateFormat('dd-MM-yyyy').format(pickedDate);
              });
              debugPrint("Date Picker: $pickedDate");
            }
          },
          child: TextFormField(
            controller: dateController,
            maxLength: 10, // Maximum length for "dd-MM-yyyy"
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
