import 'package:firstapp/main.dart';
import 'package:firstapp/models/person.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AddForm extends StatefulWidget {
  const AddForm({super.key});

  @override
  State<AddForm> createState() => _AddFormState();
}

class _AddFormState extends State<AddForm> {
  final _formKey = GlobalKey<FormState>();
  String _name = "";
  int _age = 0;
  Career _career = Career.doctor;
  // final _nameController = TextEditingController();
  // final _ageController = TextEditingController();
  // final _careerController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'แอพพลิเคชั่น',
      home: Scaffold(
        appBar: AppBar(
          title: const Text("แบบฟอร์มบันทึกข้อมูล"),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                //Name
                TextFormField(
                  maxLength: 20,
                  decoration: InputDecoration(
                    labelText: "ชื่อ",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  validator: (value){
                    if(value == null || value.isEmpty){
                      return "กรุณาป้อนชื่อของคุณ";
                    }
                    return null;
                  },
                  onSaved: (value){
                    _name = value!;
                  },
                ),
                //Age
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: "อายุ",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  validator: (value){
                    if(value == null || value.isEmpty){
                      return "กรุณาป้อนอายุของคุณ";
                    }
                    return null;
                  },
                  onSaved: (value){
                    _age = int.parse(value.toString());
                  },
                ),
                const SizedBox(height: 20),

                //Career
                DropdownButtonFormField(
                  value: _career,
                  decoration: const InputDecoration(
                    label: Text("อาชีพ", style: TextStyle(fontSize: 20),)
                  ),
                  items: Career.values.map((key){
                    return DropdownMenuItem(
                      value: key,
                      child: Text(key.title),
                    );
                  }).toList(),
                  onChanged: (value){
                    setState(() {
                      _career = value!;
                    });
                  },
                ),
                const SizedBox(height: 20),
                FilledButton(
                  onPressed: (){
                    _formKey.currentState!.validate();
                    _formKey.currentState!.save();
                    data.add(Person(name: _name, age: _age, career: _career));
                    _formKey.currentState!.reset();
                    print("บันทึกข้อมูลเรียบร้อย");
                    Navigator.pushReplacement(
                      context, 
                      MaterialPageRoute(builder: (ctx)=> const MyApp())
                    );
                  },

                  style: FilledButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4.0), // Adjust this value to your preference
                    ),
                  ), 
                  child: Text("บันทึก" , style: TextStyle(fontSize: 20))
                )
                
              ]
            ),
          ),
        ),
      ),
    );
  }
}