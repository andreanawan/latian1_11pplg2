import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:latian1_11pplg2/component/Customtextfied.dart';
import 'package:latian1_11pplg2/component/custom_button.dart';
import 'package:latian1_11pplg2/controllers/calculator.dart';
import 'package:get/get.dart';


class CalculatorPages extends StatelessWidget {
 CalculatorPages({super.key});

  final CalculatorController calculatorController = Get.put(CalculatorController());
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("calculator"),),
      body: Column(
        children: [
          CustomTextField(controller: calculatorController.txtangka1, label: "input angka 1", labelColor: Colors.black, pass: false),
          CustomTextField(controller: calculatorController.txtangka2, label: "input angka 2", labelColor: Colors.black, pass: false),
          Row(
            children: [
              CustomButton(myText: "+", myTexcolor: Colors.black, onPressed:(){
                calculatorController.tambah();
              },),
              CustomButton(myText: "-", myTexcolor: Colors.black, onPressed: (){
                calculatorController.kurang();
              },),
            ],
          ),
          Row(
            children: [
              CustomButton(myText: "/", myTexcolor: Colors.black, onPressed: (){
                calculatorController.bagi();
              },),
              CustomButton(myText: "*", myTexcolor: Colors.black, onPressed: (){
                calculatorController.kali();
              },),
            ],
          ),
           Obx(() {
            return Text("Hasil " + calculatorController.txthasil.value);
            }),
             const SizedBox(height: 20),
            CustomButton(
              myText: "Clear",
              onPressed: calculatorController.clear,
              myTexcolor: Colors.white,
              backgroundColor: Colors.redAccent,
            ),
        ],
        
        
        
      ),
    );
  }
}