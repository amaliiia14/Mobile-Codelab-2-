import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../routes/app_pages.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      backgroundColor: const Color.fromARGB(255, 71, 159, 221),
      body: Center( // Memastikan isinya di tengah layar
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Menyusun secara vertikal
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Welcome to The Application",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30), // Memberi jarak antar widget
            ElevatedButton.icon(
              onPressed: () {
                Get.toNamed(Routes.HTTP); 
              },
              icon: const Icon(Icons.http), // Ikon pada button
              label: const Text("GO TO HTTP"),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
              ),
            ),
          ],
        ),
      ),
    );
  }
}