import 'package:flutter/material.dart';
// Importamos las rutas
import 'package:practica_colores/core/router/app_routes.dart';
import '../widgets/color_tile.dart';
import '../widgets/section_title.dart';
import '../widgets/typography_section.dart';

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

              // --- BOTONES DE NAVEGACIÓN AÑADIDOS ---
              const SizedBox(height: 24),
              const SectionTitle(text: "Navegación"),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, AppRoutes.responsive);
                    },
                    child: const Text('Ir a Card Responsiva'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, AppRoutes.estadisticas);
                    },
                    child: const Text('Ir a Dashboard'),
                  ),
                ],
              ),
              // --- FIN DE BOTONES AÑADIDOS ---
            ],
          ),
        ),
      ),
    );
  }
}