import 'package:flutter/material.dart';

import '../buttons/dropdown_button.dart';
import '../const/textStyle.dart';
import '../services/camera.dart';

class VisitorForm extends StatefulWidget {
  const VisitorForm({super.key});

  @override
  State<VisitorForm> createState() {
    return _VisitorFormState();
  }
}

class _VisitorFormState extends State<VisitorForm> {
  TextEditingController visitorName = TextEditingController();
  TextEditingController visitorPhone = TextEditingController();
  TextEditingController visitorPurpose = TextEditingController();
  TextEditingController visitorAadharNumber = TextEditingController();

  @override
  void dispose() {
    visitorName.dispose();
    visitorPhone.dispose();
    visitorPurpose.dispose();
    visitorAadharNumber.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Visitor Entry'),
          centerTitle: true,
        ),
        body: Center(
          child: SizedBox(
            width: MediaQuery.of(context).size.width / 1.52,
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextField(
                        controller: visitorName,
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          icon: const Icon(Icons.person),
                          labelText: 'Enter Your Name',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            borderSide: BorderSide(color: Colors.grey.shade300),
                          ),
                        )),
                    const SizedBox(height: 10),
                    TextField(
                        controller: visitorPhone,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          icon: const Icon(Icons.phone),
                          labelText: 'Enter Your Number',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            borderSide: BorderSide(color: Colors.grey.shade300),
                          ),
                        )),
                    const SizedBox(height: 10),
                    TextField(
                        controller: visitorPurpose,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          icon: const Icon(Icons.add_box),
                          labelText: 'Enter Your Visit Purpose',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            borderSide: BorderSide(color: Colors.grey.shade300),
                          ),
                        )),
                    const SizedBox(height: 10),
                    TextField(
                        controller: visitorAadharNumber,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          icon: const Icon(Icons.phone),
                          labelText: 'Enter Your AadharNumber',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            borderSide: BorderSide(color: Colors.grey.shade300),
                          ),
                        )),
                    const SizedBox(height: 20),
                    const DropDownButton(),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Upload Photo', style: TextStyles.bold),
                        IconButton(
                          icon: Icon(Icons.camera),
                          onPressed: () {
                            Files().pickImage();
                          },
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Resident', style: TextStyles.bold),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.arrow_forward))
                      ],
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('Submit'),
                    )
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
