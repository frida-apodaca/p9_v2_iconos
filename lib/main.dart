import 'package:flutter/material.dart';

void main() => runApp(const MisIconos());

class MisIconos extends StatelessWidget {
  const MisIconos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Frida Apodaca'),
          titleTextStyle:
              const TextStyle(color: Color(0xffb4c0e1), fontSize: 30),
          centerTitle: true,
          backgroundColor: const Color(0xff1d3857),
        ),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 30),
              Text(
                'frida sofia apodaca cera MAT:22308051281136',
                style: TextStyle(fontSize: 20, color: Color(0xff103d52)),
              ),
              // Primera fila con 2 iconos
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  IconWithLabel(
                    icon: Icons.star,
                    label: 'Favorito',
                    color: Colors.yellow,
                  ),
                  IconWithLabel(
                    icon: Icons.favorite,
                    label: 'favoritos',
                    color: Colors.red,
                  ),
                  IconWithLabel(
                    icon: Icons.search,
                    label: 'Me gusta',
                    color: Color(0xff000000),
                  ),
                ],
              ),
              SizedBox(height: 20), // Espacio entre las filas
              // Segunda fila con 1 icono
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  IconWithLabel(
                    icon: Icons.thumb_up,
                    label: 'me gusta',
                    color: Colors.blue,
                  ),
                  IconWithLabel(
                    icon: Icons.thumb_down_alt,
                    label: 'no me gusta',
                    color: Color(0xfff10808),
                  ),
                  IconWithLabel(
                    icon: Icons.add,
                    label: 'me gusta',
                    color: Color(0xff8e21f3),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
} // fin clase mis iconos

class IconWithLabel extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color color;

  const IconWithLabel({
    super.key,
    required this.icon,
    required this.label,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Icon(icon, size: 50, color: color),
        const SizedBox(height: 8), // Espacio entre el ícono y el texto
        Text(label, style: const TextStyle(fontSize: 16)),
      ],
    );
  }
}
