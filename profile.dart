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
          padding: const EdgeInsets.only(bottom: 50.0),
          child: Column(
            children: [
              const SizedBox(height: 20.0),
              Header(),
              const SizedBox(height: 5.0),
              Photo(),
              const DataField('Ваше Имя', "Куцай Юлия Александровна"),
              const SizedBox(height: 20.0),
              const DataField("Дата Рождения", "22.02.1975"),
              const SizedBox(height: 20.0),
              const DataField("Должность", "Менеджер"),
              const SizedBox(height: 20.0),
              const DataField("Заработок", "30000"),
              const SizedBox(height: 20.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Пол",
                    style: TextStyle(fontWeight: FontWeight.w300),
                  ),
                  const SizedBox(height: 5.0),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const SizedBox(height: 20.0),
                      Container(
                        padding: const EdgeInsets.only(left: 10.0),
                        alignment: Alignment.centerLeft,
                        width: 140,
                        height: 50,
                        decoration: BoxDecoration(
                          color: const Color(0xFFf1f3fd),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: const Text('Мужчина'),
                      ),
                      const SizedBox(width: 20.0),
                      Container(
                        padding: const EdgeInsets.only(left: 10.0),
                        alignment: Alignment.centerLeft,
                        width: 140,
                        height: 50,
                        decoration: BoxDecoration(
                          color: const Color(0xFFf1f3fd),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: const Text('Женщина'),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DataField extends StatelessWidget {
  const DataField(this.header, this.text);

  final String header;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          header,
          style: const TextStyle(fontWeight: FontWeight.w300),
        ),
        const SizedBox(height: 5.0),
        Container(
          padding: const EdgeInsets.only(left: 10.0),
          alignment: Alignment.centerLeft,
          width: 300,
          height: 50,
          decoration: BoxDecoration(
            color: const Color(0xFFf1f3fd),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Text(text),
        ),
      ],
    );
  }
}

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 35.0,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            left: 30,
            child: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {},
            ),
          ),
          const Text(
            "Персональные данные",
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}

class Photo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      width: 140,
      child: Stack(
        children: [
          Align(
            child: Container(
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
          ),
          Positioned(
            left: 89,
            top: 89,
            child: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 1,
                    blurRadius: 1,
                    offset: const Offset(0, 0),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
