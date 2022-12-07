import 'package:flutter/material.dart';

void main() {
  runApp(const MyTrying());
}

class MyTrying extends StatelessWidget {
  const MyTrying({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                stops: [
                  0.1,
                  0.4,
                  1
                ],
                colors: [
                  Colors.black,
                  Color.fromARGB(255, 91, 89, 163),
                  Color.fromARGB(255, 52, 10, 24),
                ]),
            // color: Colors.amber

            // image: DecorationImage(
            //   image: AssetImage("images/backgroundOne.jpg"),
            // ),
          ),
          child: Column(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Center(
                  child: Padding(
                    padding: EdgeInsets.only(top: 30.0),
                    child: Text(
                      "My Day ",
                      style: TextStyle(
                          fontFamily: "Merienda",
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 60),
                    ),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(bottom: 60.0),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.add,
                        color: Color.fromARGB(255, 45, 43, 43),
                      ),
                      hintText: "Task",
                      constraints: BoxConstraints(maxWidth: 380),
                      filled: true,
                      fillColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                    ),
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
