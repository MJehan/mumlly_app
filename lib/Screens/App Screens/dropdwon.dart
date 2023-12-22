import 'package:flutter/material.dart';


class CustomDropdown extends StatefulWidget {
  @override
  _CustomDropdownState createState() => _CustomDropdownState();
}

class _CustomDropdownState extends State<CustomDropdown> {
  String selectedValue = 'Type of Notes';
  List<String> dropdownItems = ['Type of Notes', 'Option 2', 'Option 3', 'Option 4'];

  @override
  Widget build(BuildContext context) {
    return Container(

      child: DropdownButton<String>(
        value: selectedValue,
        onChanged: (String? newValue) {
          setState(() {
            selectedValue = newValue!;
          });
        },
        items: dropdownItems.map((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(value, style: TextStyle(
                    fontSize: 19,
                    color: Colors.grey),),
                // Icon(Icons.arrow_drop_down),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}