import 'package:flutter/material.dart';
import 'screens/profile_page.dart';
import 'screens/about_page.dart';
import 'theme/app_theme.dart';

void main() {
  runApp(ProfileCardApp());
}

class ProfileCardApp extends StatefulWidget {
  @override
  State<ProfileCardApp> createState() => _ProfileCardAppState();
}

class _ProfileCardAppState extends State<ProfileCardApp> {
  ThemeMode themeMode = ThemeMode.system; // Tambahan: tema otomatis

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile Card App',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: themeMode,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Profile Card App'),
          actions: [
            PopupMenuButton<String>(
              onSelected: (value) {
                setState(() {
                  if (value == 'light')
                    themeMode = ThemeMode.light;
                  else if (value == 'dark')
                    themeMode = ThemeMode.dark;
                  else
                    themeMode = ThemeMode.system;
                });
              },
              itemBuilder: (context) => [
                const PopupMenuItem(value: 'light', child: Text('Light Mode')),
                const PopupMenuItem(value: 'dark', child: Text('Dark Mode')),
                const PopupMenuItem(
                  value: 'system',
                  child: Text('System Mode'),
                ),
              ],
              icon: const Icon(Icons.color_lens),
            ),
          ],
        ),
        body: const ProfilePage(),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(color: Colors.teal),
                child: Text(
                  'Menu',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
              ListTile(
                leading: Icon(Icons.info),
                title: Text('Tentang'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const AboutPage()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
