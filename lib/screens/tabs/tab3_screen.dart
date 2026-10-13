import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';

class Tab3Screen extends StatelessWidget {
  const Tab3Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Win • Stats'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: AppTheme.surfaceColor,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: AppTheme.primaryColor.withValues(alpha: 0.3)),
              ),
              child: const Column(
                children: [
                  Text('Суммарный тоннаж за неделю', style: TextStyle(color: Colors.white70, fontSize: 12)),
                  SizedBox(height: 6),
                  Text('28,450 кг', style: TextStyle(color: AppTheme.primaryColor, fontSize: 32, fontWeight: FontWeight.bold)),
                  SizedBox(height: 6),
                  Text('+12% прогресс перегрузки vs прошлый месяц', style: TextStyle(color: Colors.greenAccent, fontSize: 12)),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Text('Персональные рекорды (1ПМ)', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
            const SizedBox(height: 12),
            _buildPr('Жим лежа', '115 кг', '+5 кг за месяц'),
            _buildPr('Приседания со штангой', '150 кг', '+10 кг за 2 месяца'),
            _buildPr('Становая тяга', '185 кг', 'Рекорд клуба'),
            _buildPr('Подтягивания с весом', '+32 кг на 5 повт.', 'Отличная сила спины'),
          ],
        ),
      ),
    );
  }

  Widget _buildPr(String name, String weight, String change) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(color: AppTheme.cardColor, borderRadius: BorderRadius.circular(14)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14)),
              Text(change, style: const TextStyle(color: Colors.white60, fontSize: 12)),
            ],
          ),
          Text(weight, style: const TextStyle(color: AppTheme.secondaryColor, fontWeight: FontWeight.bold, fontSize: 16)),
        ],
      ),
    );
  }
}
