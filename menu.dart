import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(20.0, 50.0, 20.0, 0),
          child: Column(
            children: [
              Person(),
              const SizedBox(height: 20.0),
              Division(),
              const SizedBox(height: 30.0),
              const Data(
                text: "Персональные данные",
                icon: Icons.perm_identity,
              ),
              const SizedBox(height: 20.0),
              const Data(
                text: 'Настройки',
                icon: Icons.settings,
              ),
              const SizedBox(height: 20.0),
              const Data(
                text: 'Электронное Заявление',
                icon: Icons.description,
              ),
              const SizedBox(height: 10.0),
              Division(),
              const SizedBox(height: 30.0),
              const Data(
                text: 'Реферальный Код',
                icon: Icons.favorite,
              ),
              const SizedBox(height: 20.0),
              const Data(
                text: 'Часто задаваемые вопросы',
                icon: Icons.pending,
              ),
              const SizedBox(height: 20.0),
              const Data(
                text: 'Наш справочник',
                icon: Icons.drive_file_rename_outline,
              ),
              const SizedBox(height: 20.0),
              const Data(
                text: 'Сообщество',
                icon: Icons.groups,
              ),
              const SizedBox(height: 20.0),
              Help(),
              const SizedBox(height: 20.0),
            ],
          ),
        ),
      ),
    );
  }
}

class Person extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                spreadRadius: 1,
                blurRadius: 1,
                offset: const Offset(0, 0),
              ),
            ],
          ),
        ),
        const SizedBox(width: 30.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "Иванов Иван Иванович",
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 10.0),
            Text(
              'Агрессивный Инвестор',
              style: TextStyle(fontSize: 10),
            ),
          ],
        ),
      ],
    );
  }
}

class Data extends StatelessWidget {
  const Data({
    required this.text,
    required this.icon,
  });

  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(5.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    spreadRadius: 1,
                    blurRadius: 1,
                    offset: const Offset(0, 0),
                  ),
                ],
              ),
              child: Icon(icon),
            ),
            const SizedBox(width: 10.0),
            Text(
              text,
              style: const TextStyle(fontWeight: FontWeight.w300),
            ),
          ],
        ),
        const Icon(Icons.arrow_forward_ios),
      ],
    );
  }
}

class Division extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1.0,
      color: Colors.black12,
    );
  }
}

class Help extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 50,
          width: 440,
          decoration: BoxDecoration(
            color: Colors.blue[100],
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                spreadRadius: 1,
                blurRadius: 1,
                offset: const Offset(0, 0),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
