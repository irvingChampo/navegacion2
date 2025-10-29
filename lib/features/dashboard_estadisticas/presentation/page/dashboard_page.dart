import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart'; // 1. Importar go_router
// 2. Corregir import del proyecto
import 'package:navegacion2/core/router/app_routes.dart';
import 'package:navegacion2/features/dashboard_estadisticas/presentation/widgets/custom_card.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Center(
          child: Text('Dashboard de Estadísticas'),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // --- BOTONES DE NAVEGACIÓN CORREGIDOS ---
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // 3. Usar context.go() con el PATH
                      context.go(AppRoutes.homePath);
                    },
                    child: const Text('Ir a Home'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // 3. Usar context.go() con el PATH
                      context.go(AppRoutes.responsivaPath);
                    },
                    child: const Text('Ir a Card Responsiva'),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              // --- FIN DE BOTONES AÑADIDOS ---

              Expanded(
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    if (constraints.maxWidth > 600) {
                      return const Row(
                        children: [
                          Expanded(flex: 5, child: CustomCard(title: 'Tarjeta 1', value: '50%'),), SizedBox(width: 16),
                          Expanded(flex: 3, child: CustomCard(title: 'Tarjeta 2', value: '30%'),), SizedBox(width: 16),
                          Expanded(flex: 2, child: CustomCard(title: 'Tarjeta 3', value: 'Flexible'),),
                        ],
                      );
                    } else {
                      return const Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          CustomCard(title: 'Tarjeta 1', value: '50%'),
                          CustomCard(title: 'Tarjeta 2', value: '30%'),
                          CustomCard(title: 'Tarjeta 3', value: 'Flexible'),
                        ],
                      );
                    }
                  },
                ),
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  ElevatedButton(onPressed: () {}, child: const Text('Reporte')),
                  const Spacer(),
                  ElevatedButton(onPressed: () {}, child: const Text('Analizar')),
                  const Spacer(),
                  ElevatedButton(onPressed: () {}, child: const Text('Ajustes')),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
