import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 30),
      color: Colors.white,
      child: Center(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 80),
            ),
            Container(
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(blurRadius: 8),
                ],
              ),
              child: const Image(
                image: AssetImage('images/Cover.jpg'),
                width: 250,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 25),
            ),
            texto('The Last Uf Us', Colors.black87, 40),
            const Padding(
              padding: EdgeInsets.only(top: 10),
            ),
            texto('Naugthy Dog', Colors.black54, 30),
            const Padding(
              padding: EdgeInsets.only(top: 15),
            ),
            const Texto(
                'La historia de The Last of Us gira en torno a un virus nacido por el hongo Cordyceps Unilateralis. Es decir, a diferencia de otros juegos, aquí la naturaleza da el brote que amenaza a la humanidad. Después de recibir esa información, nos transportamos 20 años en el futuro para ser Joel, el protagonista de la historia. Acompañado por Tess, debe vivir en un mundo que no es lo que conocemos.',
                Colors.black54,
                15),
            const Padding(
              padding: EdgeInsets.only(top: 20),
            ),
            BotonAgregar(),
          ],
        ),
      ),
    );
  }

  Text texto(String contenido, Color color, double size) {
    return Text(
      contenido,
      textDirection: TextDirection.ltr,
      style: TextStyle(
        color: color,
        fontSize: size,
      ),
    );
  }
}

class Texto extends StatelessWidget {
  final String contenido;
  final Color color;
  final double tamano;
  const Texto(this.contenido, this.color, this.tamano, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      contenido,
      textDirection: TextDirection.ltr,
      style: TextStyle(color: color, fontSize: tamano),
    );
  }
}

class BotonAgregar extends StatefulWidget {
  const BotonAgregar({super.key});

  @override
  State<BotonAgregar> createState() => _BotonAgregarState();
}

class _BotonAgregarState extends State<BotonAgregar> {
  bool guardado = false;
  @override
  Widget build(BuildContext context) {
    var boton = guardado
        ? ElevatedButton(
            onPressed: manejadorBoton,
            style: ElevatedButton.styleFrom(backgroundColor: Colors.redAccent),
            child: const Text(
              'Quitar Favorito',
            ),
          )
        : ElevatedButton(
            onPressed: manejadorBoton,
            style: ElevatedButton.styleFrom(backgroundColor: Colors.blueAccent),
            child: const Text(
              'Agregar favorito',
            ),
          );

    return Directionality(
      textDirection: TextDirection.ltr,
      child: boton,
    );
  }

  void manejadorBoton() {
    setState(() {
      guardado = !guardado;
    });
  }
}
