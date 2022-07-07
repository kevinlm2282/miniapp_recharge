import 'package:flutter/material.dart';
import 'package:miniapp_recharge/button/button_select.dart';
import 'package:miniapp_recharge/button/button_select_option.dart';
import 'package:miniapp_recharge/theme/colors.dart';
import 'package:miniapp_recharge/theme/index.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recarga de credito',
      debugShowCheckedModeBanner: false,
      theme: globalTheme(),
      home: Credit_Recharge(),
    );
  }
}

class Credit_Recharge extends StatefulWidget {
  const Credit_Recharge({Key? key}) : super(key: key);

  @override
  State<Credit_Recharge> createState() => _Credit_RechargeState();
}

class _Credit_RechargeState extends State<Credit_Recharge> {
  List<String> empresas = ["Viva", "Tigo", "Entel"];

  String emp = "Viva";
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    Color button = textSecondColor;
    Color text = baniPurple;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
            child: Column(
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            Text(
              "Datos de la recarga",
              style: TextStyle(
                  color: baniTeal, fontWeight: FontWeight.bold, fontSize: 30),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Selecione un numero de Telefono",
              style: TextStyle(color: baniTeal),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              decoration: InputDecoration(
                icon: Icon(Icons.add_ic_call, color: baniPurple),
                hintText: 'Ingrese numero de celular',
                labelText: 'Celular',
                disabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: baniPurple, width: 2.0),
                    borderRadius: BorderRadius.circular(10)),
                enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: baniPurple, width: 2.0),
                    borderRadius: BorderRadius.circular(10)),
                focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: baniPurple, width: 2.0),
                    borderRadius: BorderRadius.circular(10)),
                border: OutlineInputBorder(
                  borderSide: const BorderSide(color: baniBlue, width: 2.0),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Selecione la empresa",
              style: TextStyle(color: baniTeal),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30), color: baniPurple),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Empresa",
                      style: TextStyle(color: textSecondColor),
                    ),
                    DropdownButton(
                      icon: Icon(Icons.arrow_drop_down, color: Colors.white),
                      items: listData(empresas),
                      underline: Container(
                        height: 0,
                        color: Colors.white,
                      ),
                      value: emp,
                      onChanged: (String? opt) {
                        setState(() {
                          emp = opt!;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Selecione el monto de recarga",
              style: TextStyle(color: baniTeal),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                FloatingActionButton(
                  onPressed: () {},
                  child: Text(
                    "1Bs",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                FloatingActionButton(
                  onPressed: () {},
                  child: Text("2Bs", style: TextStyle(fontSize: 20)),
                ),
                FloatingActionButton(
                  onPressed: () {},
                  child: Text("3Bs", style: TextStyle(fontSize: 20)),
                ),
                FloatingActionButton(
                  onPressed: () {},
                  child: Text("Otro", style: TextStyle(fontSize: 20)),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            TextFormField(
              decoration: InputDecoration(
                icon: Text("BS"),
                disabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: baniPurple, width: 2.0),
                    borderRadius: BorderRadius.circular(10)),
                enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: baniPurple, width: 2.0),
                    borderRadius: BorderRadius.circular(10)),
                focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: baniPurple, width: 2.0),
                    borderRadius: BorderRadius.circular(10)),
                border: OutlineInputBorder(
                  borderSide: const BorderSide(color: baniBlue, width: 2.0),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              child: ElevatedButton(onPressed: () {}, child: Text("Continuar")),
              width: size.width * 0.85,
            )
          ],
        )),
      ),
    );
  }
}

List<DropdownMenuItem<String>> listData(dynamic opciones) {
  List<DropdownMenuItem<String>> listaObj = [];

  opciones.forEach((element) {
    listaObj.add(DropdownMenuItem(
      child: Container(
        padding: EdgeInsets.all(5),
        width: 130,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30), color: textSecondColor),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(element),
            CircleAvatar(
              minRadius: 30,
              backgroundImage: NetworkImage(
                  "https://upload.wikimedia.org/wikipedia/commons/4/47/Tigo.JPG"),
            )
          ],
        ),
      ),
      value: element,
    ));
  });

  return listaObj;
}
