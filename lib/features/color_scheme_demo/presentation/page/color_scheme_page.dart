import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart'; // 1. Importar go_router
// 2. Corregir import del proyecto
import 'package:navegacion2/core/router/app_routes.dart';
import 'package:navegacion2/features/color_scheme_demo/presentation/widgets/color_tile.dart';
import 'package:navegacion2/features/color_scheme_demo/presentation/widgets/section_title.dart';
import 'package:navegacion2/features/color_scheme_demo/presentation/widgets/typography_section.dart';


class ColorSchemePage extends StatelessWidget {
  const ColorSchemePage({super.key});
  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Demostración de ColorScheme"),
        backgroundColor: scheme.primary,
        foregroundColor: scheme.onPrimary,
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ... (Todo tu código de Widgets de colores y tipografía va aquí) ...
              const SectionTitle(text: "Colores Primarios"),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [
                  ColorTile(label: "primary", color: scheme.primary, textColor: scheme.onPrimary),
                  ColorTile(label: "onPrimary", color: scheme.onPrimary, textColor: scheme.primary),
                  ColorTile(label: "primaryContainer", color: scheme.primaryContainer, textColor: scheme.onPrimaryContainer),
                ],
              ),
              const SizedBox(height: 24),
              const SectionTitle(text: "Colores Secundarios"),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [
                  ColorTile(label: "secondary", color: scheme.secondary, textColor: scheme.onSecondary),
                  ColorTile(label: "secondaryContainer", color: scheme.secondaryContainer, textColor: scheme.onSecondaryContainer),
                ],
              ),
              const SizedBox(height: 24),
              const SectionTitle(text: "Superficie y Fondo"),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [
                  ColorTile(label: "surface", color: scheme.surface, textColor: scheme.onSurface),
                  ColorTile(label: "background", color: scheme.background, textColor: scheme.onBackground),
                ],
              ),
              const SizedBox(height: 24),
              const SectionTitle(text: "Errores"),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [
                  ColorTile(label: "error", color: scheme.error, textColor: scheme.onError),
                  ColorTile(label: "errorContainer", color: scheme.errorContainer, textColor: scheme.onErrorContainer),
                ],
              ),
              const SizedBox(height: 24),
              const TypographySection(),
              // --- BOTONES DE NAVEGACIÓN CORREGIDOS ---
              const SizedBox(height: 24),
              const SectionTitle(text: "Navegación"),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // 3. Usar context.go() con el PATH
                      context.go(AppRoutes.responsivaPath);
                    },
                    child: const Text('Ir a Card Responsiva'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // 3. Usar context.go() con el PATH
                      context.go(AppRoutes.estadisticaPath);
                    },
                    child: const Text('Ir a Dashboard'),
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
