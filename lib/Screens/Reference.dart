import 'package:flutter/material.dart';


class DropDownExample extends StatefulWidget {
  const DropDownExample({super.key});

  @override
  State<DropDownExample> createState() => _DropDownExampleState();
}

class _DropDownExampleState extends State<DropDownExample> {
  // Default dropdown selection
  String selectedValue = "Personal";

  // Dropdown options - add more options to allow scrolling
  final List<String> options = [
    "Personal",
    "Work",
    "Budget",
    "Shopping",
    "Fitness"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scrollable Dropdown'),
      ),
      body: Center(
        child: Container(
          height: 50,
          width: 150,
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(12),
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                spreadRadius: 1,
                blurRadius: 5,
                offset: Offset(2, 3),
              ),
            ],
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              value: selectedValue, // Currently selected value
              isExpanded: true, // Makes dropdown full width of the Container
              icon: const Icon(Icons.arrow_drop_down), // Dropdown icon
              style: const TextStyle(
                color: Colors.black87,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              dropdownColor: Colors.white,
              // Generates scrollable dropdown entries automatically
              items: options.map((String item) {
                return DropdownMenuItem<String>(
                  value: item,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: Text(item),
                  ),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  selectedValue = newValue!;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}