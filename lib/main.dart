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
    "Tigo":
        "https://es.logodownload.org/wp-content/uploads/2018/12/tigo-logo-11.png",
    "Entel":
        "https://institucional.entel.bo/inicio3.0/images/Prensa/ENTEL_MARCA_PODEROSA_2013_/Imagen1.png"
  };
  String emp = "Viva";
  TextEditingController controller = TextEditingController();
  String? gender;
  double _value = 20;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    Color button = textSecondColor;
    Color text = baniPurple;
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
      children: [
        Container(
          padding: EdgeInsets.all(18.0),
          height: size.height * 0.10,
          width: size.width,
          // color: Colors.blueGrey,
          child: Image.asset('white_appbar_label.png'),
          color: baniTeal,
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              Text(
                "Datos de la recarga",
                style: TextStyle(
                  color: baniPurple,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Selecione un numero de Telefono",
                style: TextStyle(color: baniPurple),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: size.width * 0.85,
                child: TextFormField(
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
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Selecione la empresa",
                style: TextStyle(color: baniPurple),
              ),
              Container(
                height: 130,
                width: size.width * 0.8,
                // color: Colors.amber,
                // padding: EdgeInsets.only(left: 20, right: 20),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Radio(
                              activeColor: baniTeal,
                              value: "viva",
                              groupValue: gender,
                              onChanged: (value) {
                                setState(() {
                                  gender = value.toString();
                                });
                              }),
                          CircleAvatar(
                            radius: 40,
                            backgroundImage: AssetImage("viva.png"),
                          )
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Radio(
                              activeColor: baniTeal,
                              value: "entel",
                              groupValue: gender,
                              onChanged: (value) {
                                setState(() {
                                  gender = value.toString();
                                });
                              }),
                          CircleAvatar(
                            radius: 40,
                            backgroundImage: AssetImage("entel1.png"),
                          )
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Radio(
                              activeColor: baniTeal,
                              value: "tigo",
                              groupValue: gender,
                              onChanged: (value) {
                                setState(() {
                                  gender = value.toString();
                                });
                              }),
                          CircleAvatar(
                            radius: 40,
                            backgroundImage: AssetImage("tigo.png"),
                          )
                        ],
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
                style: TextStyle(color: baniPurple),
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
                    backgroundColor: baniPurple,
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
              Container(
                width: size.width * 0.85,
                child: TextFormField(
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
                  height: 55),
              SizedBox(
                height: 100,
              ),
            ],
          ),
        ),
      ],
    )));
  }
}

// List<DropdownMenuItem<String>> listData(
//     dynamic opciones, Map<String, String> img) {
//   List<DropdownMenuItem<String>> listaObj = [];

//   opciones.forEach((element) {
//     listaObj.add(DropdownMenuItem(
//       child: Container(
//         padding: EdgeInsets.all(5),
//         width: 60,
//         decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(30), color: textSecondColor),
//         child: Center(
//           child: CircleAvatar(
//             minRadius: 30,
//             backgroundImage: NetworkImage("${img[element]}"),
//           ),
//         ),
//       ),
//       value: element,
//     ));
//   });

//   return listaObj;
// }
