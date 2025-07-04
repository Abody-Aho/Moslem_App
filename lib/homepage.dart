import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:moselem/tsbeh.dart';
import 'al_masi.dart';
import 'al_sabh.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAF5EF),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/5.png'),
            fit: BoxFit.cover,
            opacity: 0.7,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: ListView(
                  children: [
                    const SizedBox(height: 130),
                    const Text(
                      "﷽",
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.teal,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "مرحبًا بك في تطبيق أذكار المسلم",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.black87,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 30),
                    buildIslamicCard(
                      context,
                      title: "أذكار المساء",
                      icon: Icons.nightlight_round,
                      color: Colors.indigo,
                      destination: const Masi(),
                    ),
                    buildIslamicCard(
                      context,
                      title: "أذكار الصباح",
                      icon: Icons.wb_sunny,
                      color: Colors.orange,
                      destination: const Sabh(),
                    ),
                    buildIslamicCard(
                      context,
                      title: "التسبيح",
                      icon: Iconsax.repeat_circle,
                      color: Colors.green,
                      destination: const TsbehPage(),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: Text(
                  "اللهم اجعل هذا العمل خالصًا لوجهك الكريم",
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildIslamicCard(BuildContext context,
      {required String title,
        required IconData icon,
        required Color color,
        required Widget destination}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Card(
        elevation: 5,
        shadowColor: color.withOpacity(0.3),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: ListTile(
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => destination));
          },
          leading: CircleAvatar(
            backgroundColor: color.withOpacity(0.1),
            child: Icon(icon, color: color),
          ),
          title: Text(
            title,
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: color,
            ),
          ),
          trailing: const Icon(Icons.arrow_forward_ios, size: 18),
        ),
      ),
    );
  }
}