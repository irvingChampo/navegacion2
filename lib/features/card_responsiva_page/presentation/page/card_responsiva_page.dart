import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart'; // 1. Importar go_router
// 2. Corregir import del proyecto
import 'package:navegacion2/core/router/app_routes.dart';
import 'package:navegacion2/features/card_responsiva_page/presentation/widgets/custom_card_con_imagen.dart';

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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Center(
              child: FractionallySizedBox(
                widthFactor: 0.8,
                child: const CustomCardConImagen(
                  imagePath: 'assets/img/horario.png', // Esto usará el pubspec.yaml
                  text: 'Horario de clases para 9o cuatrimestre.',
                ),
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // 3. contexto
                    context.go(AppRoutes.homePath);
                  },
                  child: const Text('Ir a Home'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // 3. contexto
                    context.go(AppRoutes.estadisticaPath);
                  },
                  child: const Text('Ir a Dashboard'),
                ),
              ],
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
