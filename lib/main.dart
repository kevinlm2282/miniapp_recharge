import 'dart:math';

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
  Map<String, String> img = {
    "Viva":
        "https://upload.wikimedia.org/wikipedia/commons/thumb/b/ba/VIVA2020.png/800px-VIVA2020.png",
    "Tigo": "https://www.tigo.com.bo/assets/square-tigo.png",
    "Entel":
        "https://institucional.entel.bo/inicio3.0/images/Prensa/ENTEL_MARCA_PODEROSA_2013_/Imagen1.png"
  };
  String emp = "Viva";
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    Color button = textSecondColor;
    Color text = baniPurple;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
            child: SingleChildScrollView(
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
                      borderSide:
                          const BorderSide(color: baniPurple, width: 2.0),
                      borderRadius: BorderRadius.circular(10)),
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: baniPurple, width: 2.0),
                      borderRadius: BorderRadius.circular(10)),
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: baniPurple, width: 2.0),
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
                      borderRadius: BorderRadius.circular(30),
                      color: baniPurple),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Empresa",
                        style: TextStyle(color: textSecondColor),
                      ),
                      DropdownButton(
                        icon: Icon(Icons.arrow_drop_down, color: Colors.white),
                        items: listData(empresas, img),
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
                    onPressed: () {
                      controller.text = '5';
                      setState(() {});
                    },
                    child: Text(
                      "5Bs",
                      style: TextStyle(fontSize: 17, color: Colors.white),
                    ),
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      controller.text = '10';
                      setState(() {});
                    },
                    child: Text("10Bs",
                        style: TextStyle(fontSize: 17, color: Colors.white)),
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      controller.text = '20';
                      setState(() {});
                    },
                    child: Text("20Bs",
                        style: TextStyle(fontSize: 17, color: Colors.white)),
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      controller.text = '';
                    },
                    child: Text("Otro",
                        style: TextStyle(fontSize: 17, color: Colors.white)),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              TextFormField(
                controller: controller,
                decoration: InputDecoration(
                  icon: Text("Bs"),
                  disabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: baniPurple, width: 2.0),
                      borderRadius: BorderRadius.circular(10)),
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: baniPurple, width: 2.0),
                      borderRadius: BorderRadius.circular(10)),
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: baniPurple, width: 2.0),
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
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: StadiumBorder(), //<-- SEE HERE
                        padding: EdgeInsets.all(20),
                      ),
                      onPressed: () {},
                      child: Text("Continuar")),
                  width: size.width * 0.85,
                  height: size.height * 0.075)
            ],
          ),
        )),
      ),
    );
  }
}

List<DropdownMenuItem<String>> listData(
    dynamic opciones, Map<String, String> img) {
  List<DropdownMenuItem<String>> listaObj = [];

  opciones.forEach((element) {
    listaObj.add(DropdownMenuItem(
      child: Container(
        padding: EdgeInsets.all(5),
        width: 60,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30), color: textSecondColor),
        child: Center(
          child: CircleAvatar(
            minRadius: 30,
            backgroundImage: NetworkImage("${img[element]}"),
          ),
        ),
      ),
      value: element,
    ));
  });

  return listaObj;
}
