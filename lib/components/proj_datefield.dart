import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ProjectDatePicker extends StatefulWidget {
  TextEditingController controller;
  final String hintText;
  ProjectDatePicker(
      {super.key, required this.controller, required this.hintText});

  @override
  State<ProjectDatePicker> createState() => _ProjectDatePickerState();
}

class _ProjectDatePickerState extends State<ProjectDatePicker> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: TextField(
            controller: widget.controller,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(8),
              ),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade400)),
              filled: true,
              fillColor: Colors.grey.shade200,
              hintText: widget.hintText,
              hintStyle: TextStyle(color: Colors.grey[500], fontFamily: 'Lato'),
            ),
            onTap: () async {
              DateTime? pickedDate = await showCupertinoModalPopup(
                  context: context,
                  builder: (_) => Container(
                        height: 500,
                        color: const Color.fromARGB(255, 255, 255, 255),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 400,
                              child: CupertinoDatePicker(
                                  mode: CupertinoDatePickerMode.date,
                                  initialDateTime: DateTime.now(),
                                  onDateTimeChanged: (DateTime dateTime) {
                                    setState(() {
                                      final formattedDate =
                                          DateFormat('yyyy-MM-dd')
                                              .format(dateTime);
                                      widget.controller.text = formattedDate;
                                    });
                                  }),
                            ),
                            CupertinoButton(
                              child: const Text('OK'),
                              onPressed: () => Navigator.of(context).pop(),
                            ),
                          ],
                        ),
                      ));
              if (pickedDate != null) {
                final formattedDate =
                    DateFormat('yyyy-MM-dd').format(pickedDate);
                widget.controller.text = formattedDate;
              }
            },
          ),
        ),
      ],
    );
  }
}
