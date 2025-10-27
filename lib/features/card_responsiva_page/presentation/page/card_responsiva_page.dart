import 'package:flutter/material.dart';
// Importamos las rutas
import 'package:practica_colores/core/router/app_routes.dart';
import 'package:practica_colores/features/card_responsiva_page/presentation/widgets/custom_card_con_imagen.dart';

class CardResponsivaPage extends StatelessWidget {
  const CardResponsivaPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Tarjeta'),
        ),
      ),
      // --- BODY MODIFICADO PARA AÑADIR BOTONES ---
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Tu tarjeta original
            Center(
              child: FractionallySizedBox(
                widthFactor: 0.8,
                child: const CustomCardConImagen(
                  imagePath: 'assets/img/horario.png',
                  text: 'Horario de clases para 9o cuatrimestre.',
                ),
              ),
            ),
            // Un espaciador para empujar los botones al fondo
            const Spacer(),

            // --- BOTONES DE NAVEGACIÓN AÑADIDOS ---
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, AppRoutes.home);
                  },
                  child: const Text('Ir a Home'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, AppRoutes.estadisticas);
                  },
                  child: const Text('Ir a Dashboard'),
                ),
              ],
            ),
            const SizedBox(height: 20), // Espacio inferior
          ],
        ),
      ),
      // --- FIN DE BODY MODIFICADO ---
    );
  }
}