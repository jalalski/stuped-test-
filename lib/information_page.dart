import 'package:excomers_manager/mybody.dart';
import 'package:flutter/material.dart';

class Setinformation extends StatefulWidget {
  const Setinformation({super.key});

  @override
  State<Setinformation> createState() => _SetinformationState();
}

class _SetinformationState extends State<Setinformation> {
  GlobalKey<FormState> formkey = GlobalKey();
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formkey,
        child: Column(
          children: [
            const SizedBox(height: 100),
            Text("أدخل المعلومات التالية ",
                style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
              child: Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "fild is empty";
                            }
                            return null;
                          },
                          keyboardType: TextInputType.name,
                          style: Theme.of(context).textTheme.titleSmall,
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.black12,
                              hintText: "First Name",
                              prefixIcon: const Icon(Icons.people),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30))),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "fild is empty";
                            }

                            return null;
                          },
                          keyboardType: TextInputType.name,
                          style: Theme.of(context).textTheme.titleSmall,
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.black12,
                              hintText: "Last Name",
                              prefixIcon: const Icon(Icons.people),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30))),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: TextFormField(
                maxLength: 10,
                keyboardType: TextInputType.datetime,
                style: Theme.of(context).textTheme.titleSmall,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.black12,
                    hintText: "born : /yyyy/mm/dd/",
                    prefixIcon: const Icon(Icons.system_security_update),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
              child: TextFormField(
                validator: (value) {
                  if (value != "no" && value != "yes" && value!.isNotEmpty) {
                    return "Ansser yes or no";
                  } else if (value!.isEmpty) {
                    return "fild is empty";
                  }
                  return null;
                },
                style: Theme.of(context).textTheme.titleSmall,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.black12,
                    hintText: "هل تظن نفسك غبي ",
                    prefixIcon: const Icon(Icons.question_answer),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30))),
              ),
            ),
            MaterialButton(
              height: 50,
              minWidth: 150,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              color: Colors.purple,
              onPressed: () {
                if (formkey.currentState!.validate()) {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) {
                      return Mybody();
                    },
                  ));
                }
              },
              child: Text(
                "حفظ",
                style: Theme.of(context).textTheme.titleSmall,
              ),
            )
          ],
        ),
      ),
    );
  }
}
