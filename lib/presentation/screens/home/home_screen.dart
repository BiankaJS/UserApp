import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Inicio',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color.fromARGB(255, 45, 131, 94),
      ),
      body: Container(),
      floatingActionButton: ElevatedButton(
        onPressed: (){
          context.push('/profile');
        },
        child: Text(
          'Crear perfil',
          style: TextStyle(
            color: const Color.fromARGB(255, 45, 131, 94)
          ),)),
    );
  }
}
