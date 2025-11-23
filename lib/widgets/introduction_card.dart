import 'package:flutter/material.dart';

class IntoductionCard extends StatelessWidget {
  const IntoductionCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.15),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.white.withValues(alpha: 0.2)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Bienvenue au application Tawassol',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: Colors.white.withValues(alpha: 0.8),
            ),
          ),
          const SizedBox(height: 8),
          Align(
            alignment: Alignment.center,
            child: Text(
              'Voici toutes les opportunités actuellement disponibles.',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.w600,
                color: const Color(0xFF4B5563),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              'Voici toutes les opportunités actuellement disponibles.  ',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
