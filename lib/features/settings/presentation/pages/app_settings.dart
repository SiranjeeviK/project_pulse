import 'package:flutter/material.dart';
import 'package:project_pulse/features/main/presentation/pages/home_page.dart';

class AppSettings extends StatelessWidget {
  static route() =>
      MaterialPageRoute(builder: (context) => const AppSettings());
  const AppSettings({super.key});

  @override
  Widget build(BuildContext context) {
    // final isDarkMode = ValueNotifier(settings.isDarkMode);
    // final isDarkMode = {
    //   'value': false,
    // };
    // final languageController = TextEditingController(text: settings.language);
    final languageController = TextEditingController(text: 'English');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SwitchListTile(
              title: const Text('Dark Mode'),
              // value: settings.isDarkMode,
              value: false,
              onChanged: (value) {
                // isDarkMode.value = value;
              },
            ),
            // change this into a dropdown
            TextField(
              enabled: false,
              controller: languageController,
              decoration: const InputDecoration(labelText: 'Language'),
            ),
            ElevatedButton(
              onPressed: () {
                //   final updatedSettings = Settings(
                //     isDarkMode: isDarkMode.value,
                //     language: languageController.text,
                //   );
                //   context.read<SettingsBloc>().add(UpdateSettings(updatedSettings));
                //
              },
              child: const Text('Save Settings'),
            ),
          ],
        ),
      ),
    );
  }
}
