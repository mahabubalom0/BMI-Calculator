import 'package:bmi_calculator/sereens/profile_screens.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfileInputPage extends StatefulWidget {
  @override
  State<ProfileInputPage> createState() => _ProfileInputPageState();
}

class _ProfileInputPageState extends State<ProfileInputPage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController yearController = TextEditingController();
  final TextEditingController aboutController = TextEditingController();
  final TextEditingController adderssController = TextEditingController();

  @override
  void initState() {
    super.initState();
    loadData();
  }

  // 🔹 SharedPreferences থেকে Data Load
  void loadData() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      nameController.text = prefs.getString('name') ?? '';
      yearController.text = prefs.getString('year') ?? '';
      aboutController.text = prefs.getString('about') ?? '';
      adderssController.text = prefs.getString('address') ?? '';
    });
  }

  // 🔹 Data Save
  void saveData() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('name', nameController.text);
    await prefs.setString('year', yearController.text);
    await prefs.setString('about', aboutController.text);
    await prefs.setString('address', adderssController.text);

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text("✅ Data Saved Successfully!")),
    );

    // Save করার পর Next Page এ যাও
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ProfileDisplayPage()),


    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile Input"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: const InputDecoration(
                labelText: "Enter Name",
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.person),
              ),
            ),
            const SizedBox(height: 15),
            TextField(
              controller: yearController,
              decoration: const InputDecoration(
                labelText: "Enter Year",
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.email),
              ),
            ),
            const SizedBox(height: 15),
            TextField(
              controller: adderssController,
              decoration: const InputDecoration(
                labelText: "Enter Address",
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.phone),
              ),
            ),
            const SizedBox(height: 15,),
            TextField(
              controller: aboutController,
              decoration: const InputDecoration(
                labelText: "Enter About",
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.phone),
              ),
            ),
            const SizedBox(height: 25),
            ElevatedButton.icon(
              onPressed:saveData ,
              icon: const Icon(Icons.save),
              label: const Text("Save & Go Next"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal,
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
