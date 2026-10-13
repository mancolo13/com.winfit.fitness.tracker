import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';

class Tab2Screen extends StatelessWidget {
  const Tab2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    final days = [
      {'day': 'Понедельник', 'focus': 'Жим (Грудь, Плечи, Трицепс)', 'active': true},
      {'day': 'Вторник', 'focus': 'Тяга (Спина, Задняя дельта, Бицепс)', 'active': false},
      {'day': 'Среда', 'focus': 'День Ног & Пресс (Квадрицепс, Икры)', 'active': false},
      {'day': 'Четверг', 'focus': 'Восстановление & Кардио', 'active': false},
      {'day': 'Пятница', 'focus': 'Верх тела (Гипертрофия)', 'active': false},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Win • Routine'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: const EdgeInsets.all(18),
              decoration: BoxDecoration(
                color: AppTheme.surfaceColor,
                borderRadius: BorderRadius.circular(18),
                border: Border.all(color: AppTheme.primaryColor.withValues(alpha: 0.3)),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Программа: Push / Pull / Legs Pro', style: TextStyle(color: AppTheme.primaryColor, fontWeight: FontWeight.bold, fontSize: 16)),
                  SizedBox(height: 4),
                  Text('4 тренировочных дня в неделю • Цикл 8 недель', style: TextStyle(color: Colors.white70, fontSize: 12)),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Text('Расписание тренировочного сплита', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
            const SizedBox(height: 12),
            ...days.map((d) => Container(
              margin: const EdgeInsets.only(bottom: 10),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(color: AppTheme.cardColor, borderRadius: BorderRadius.circular(14)),
              child: Row(
                children: [
                  Icon(Icons.calendar_today_outlined, color: (d['active'] as bool) ? AppTheme.primaryColor : Colors.white30, size: 20),
                  const SizedBox(width: 14),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(d['day'] as String, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14)),
                        Text(d['focus'] as String, style: const TextStyle(color: Colors.white60, fontSize: 12)),
                      ],
                    ),
                  ),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
