import 'package:flutter/material.dart';
import 'component/custom_button.dart'; 
import 'component/Customtextfied.dart';


class CustomInputField extends StatelessWidget {
  final String label;
  final bool obscureText;
  final TextEditingController controller;

  const CustomInputField({
    required this.label,
    required this.controller,
    this.obscureText = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          labelText: label,
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  String _gender = 'Laki-laki';
  DateTime? _selectedDate;

  Future<void> _selectDate(BuildContext context) async {
    final picked = await showDatePicker(
      context: context,
      initialDate: DateTime(2005, 1, 1),
      firstDate: DateTime(1950),
      lastDate: DateTime.now(),
    );

    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Register Page")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: CustomTextField(controller: _nameController, label: "name", labelColor: Colors.black, pass: false),
            ),
            Container(
              child: CustomTextField(controller:_emailController, label: "ussername", labelColor: Colors.black, pass: false),
            ),
            Container(
              child: CustomTextField(controller: _passwordController, label: "password", labelColor: Colors.black, pass: false),
            ),
            

            Container(
              margin: const EdgeInsets.only(bottom: 15),
              child: InputDecorator(
                decoration: const InputDecoration(
                  labelText: 'Jenis Kelamin',
                  border: OutlineInputBorder(),
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    value: _gender,
                    items: ['Laki-laki', 'Perempuan'].map((value) {
                      return DropdownMenuItem(
                        value: value,
                        child: Text(value),
                      );

                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        _gender = value!;
                      });
                    },
                  ),
                ),
              ),
            ),

            Container(
              margin: const EdgeInsets.only(bottom: 15),
              child: OutlinedButton(
                onPressed: () => _selectDate(context),
                child: Text(
                  _selectedDate == null
                      ? "Pilih Tanggal Lahir"
                      : "Tanggal Lahir: ${_selectedDate!.day}/${_selectedDate!.month}/${_selectedDate!.year}",
                ),
              ),
            ),

           SizedBox(
            width: double.infinity,
            child: CustomButton(
            myText: "Daftar",
            myTexcolor: Colors.white,
            onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
            content: Text("Pendaftaran berhasil!"),
        ),
      );
    },
  ),
),

          ],
        ),
      ),
    );
  }
}
