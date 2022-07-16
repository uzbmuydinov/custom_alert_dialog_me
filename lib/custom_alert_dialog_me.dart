import 'package:flutter/material.dart';

class CustomAlertDialog extends StatelessWidget {
  // mana shu yerga fieldlar yoziladi
  final String title;
  final String content;
  final String textButtonOne;
  final String textButtontwo;
  final Function() functionOne;
  final Function() functionTwo;

  const CustomAlertDialog(
      {Key? key,
      required this.title,
      required this.content,
      required this.textButtonOne,
      required this.textButtontwo,
      required this.functionOne,
      required this.functionTwo})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      actionsPadding: EdgeInsets.zero,
      backgroundColor: Colors.white,
      buttonPadding: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      title: Text(
          //mana shu yerga tepadagi tekst berib ketiladi
          title,
          textAlign: TextAlign.center),
      alignment: Alignment.center,
      content: Container(
        constraints: BoxConstraints(minHeight: 250, minWidth: 100),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          // mana shu joyida content qismi beriladi
          child: Text(
            // bu yerga content atributi beriladi
            content,
            style: TextStyle(fontSize: 18),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      actions: [
        Container(
          height: 60,
          margin: EdgeInsets.only(top: 1),
          decoration: BoxDecoration(
              border: Border(top: BorderSide(color: Colors.grey, width: 0.5))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                    // bu yerga birinchi funksia yozildi
                    functionOne();
                  },
                  child: Text(
                    //mana shu joyda birinchi buttonga funksiya berialdi
                    textButtonOne,
                    style: TextStyle(fontSize: 19, color: Colors.red),
                  ),
                ),
              ),
              VerticalDivider(
                color: Colors.grey,
                thickness: 0.5,
              ),
              Expanded(
                child: TextButton(
                  onPressed: functionTwo,
                  child: Text(
                    textButtontwo,
                    style: TextStyle(fontSize: 19, color: Colors.blue),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
