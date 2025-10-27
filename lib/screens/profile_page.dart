import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String name = 'Tekno';
  String title = 'Scrolling Engineer';
  String description = 'Scrol Fesnuk, Yapping';
  String email = 'tekno@test.com';
  String phone = '+62 812 3456 7890';
  final String imageUrl = 'https://flutter.dev/images/flutter-logo-sharing.png';

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();

  @override
  void initState() {
    super.initState();
    nameController.text = name;
    emailController.text = email;
    phoneController.text = phone;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(24),
      child: Center(
        child: Card(
          elevation: 3,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              children: [
                Image.network(imageUrl, width: 100),
                const SizedBox(height: 16),
                Text(name, style: Theme.of(context).textTheme.titleLarge),
                Text(title, style: const TextStyle(color: Colors.grey)),
                const Divider(height: 30),

                // Form Edit Profil
                TextField(
                  controller: nameController,
                  decoration: const InputDecoration(labelText: 'Nama'),
                ),
                TextField(
                  controller: emailController,
                  decoration: const InputDecoration(labelText: 'Email'),
                ),
                TextField(
                  controller: phoneController,
                  decoration: const InputDecoration(labelText: 'Telepon'),
                ),

                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      name = nameController.text;
                      email = emailController.text;
                      phone = phoneController.text;
                    });
                  },
                  child: const Text('Simpan Perubahan'),
                ),

                const SizedBox(height: 16),
                Text(description, textAlign: TextAlign.center),
                const SizedBox(height: 8),
                Text('Email: $email'),
                Text('Telepon: $phone'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
