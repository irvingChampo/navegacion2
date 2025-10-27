import 'package:flutter/material.dart';
import 'package:practica_colores/features/color_scheme_demo/presentation/widgets/section_title.dart';

class TypographySection extends StatelessWidget {
  const TypographySection({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SectionTitle(text: "Tipografías de Material 3"),
        const SizedBox(height: 8),
        Text("Display Large", style: textTheme.displayLarge?.copyWith(color: colorScheme.primary)),
        Text("Display Medium", style: textTheme.displayMedium?.copyWith(color: colorScheme.primary)),
        Text("Display Small", style: textTheme.displaySmall?.copyWith(color: colorScheme.primary)),
        const SizedBox(height: 16),
        Text("Headline Large", style: textTheme.headlineLarge?.copyWith(color: colorScheme.primary)),
        Text("Headline Medium", style: textTheme.headlineMedium?.copyWith(color: colorScheme.primary)),
        Text("Headline Small", style: textTheme.headlineSmall?.copyWith(color: colorScheme.primary)),
        const SizedBox(height: 16),
        Text("Title Large", style: textTheme.titleLarge?.copyWith(color: colorScheme.primary)),
        Text("Title Medium", style: textTheme.titleMedium?.copyWith(color: colorScheme.primary)),
        Text("Title Small", style: textTheme.titleSmall?.copyWith(color: colorScheme.primary)),
        const SizedBox(height: 16),
        Text("Body Large", style: textTheme.bodyLarge?.copyWith(color: colorScheme.primary)),
        Text("Body Medium", style: textTheme.bodyMedium?.copyWith(color: colorScheme.primary)),
        Text("Body Small", style: textTheme.bodySmall?.copyWith(color: colorScheme.primary)),
        const SizedBox(height: 16),
        Text("Label Large", style: textTheme.labelLarge?.copyWith(color: colorScheme.primary)),
        Text("Label Medium", style: textTheme.labelMedium?.copyWith(color: colorScheme.primary)),
        Text("Label Small", style: textTheme.labelSmall?.copyWith(color: colorScheme.primary)),
      ],
    );
  }
}