import 'package:excomers_manager/mywidget.dart';
import 'package:excomers_manager/stupeddegry.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class Mybody extends StatefulWidget {
  const Mybody({super.key});

  @override
  State<Mybody> createState() => _MybodyState();
}

class _MybodyState extends State<Mybody> {
  Alert showalertyes() {
    return Alert(
      context: context,
      type: AlertType.success,
      title: "نحن نعلم ذالك",
      style: AlertStyle(
          descStyle: TextStyle(fontFamily: "Cairo", color: Colors.purple),
          titleStyle: TextStyle(fontFamily: "Cairo")),
      desc: "هدا متوقع من شخص مثلك",
      buttons: [
        DialogButton(
          child: Text(
            "COOL",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          onPressed: () {
            Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) {
                return Stupedpage();
              },
            ));
          },
          width: 120,
        )
      ],
    );
  }

  Alert showalertno() {
    return Alert(
      context: context,
      type: AlertType.success,
      title: "نحن نعلم ذالك",
      style: AlertStyle(
          descStyle: TextStyle(fontFamily: "Cairo", color: Colors.purple),
          titleStyle: TextStyle(fontFamily: "Cairo")),
      desc: "هدا متوقع من شخص مثلك",
      buttons: [
        DialogButton(
          child: Text(
            "نعم أعترض",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          onPressed: () {
            Navigator.of(context).pop();
            showalertno().show();
          },
          width: 120,
        ),
        DialogButton(
          child: Text(
            "لا أعترض",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          onPressed: () {
            Navigator.of(context).pop();
            showalertyes().show();
          },
          width: 120,
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("اختبار الغباء"),
        ),
        body: Column(
          children: [
            Expanded(
              flex: 1,
              child: Image.asset(
                "images/y5amem.jpg",
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 50, bottom: 50),
                    child: Textfont(
                        text: "هل أنت غبي", color: Colors.purple, size: 40),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MaterialButton(
                            height: 50,
                            minWidth: 150,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                            color: Colors.purple,
                            onPressed: () {
                              showalertyes().show();
                            },
                            child: Textfont(
                                text: "نعم", color: Colors.white, size: 20)),
                        MaterialButton(
                            height: 50,
                            minWidth: 150,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                            color: Colors.purple,
                            onPressed: () {
                              showalertno().show();
                            },
                            child: Textfont(
                                text: "لا", color: Colors.white, size: 20)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
