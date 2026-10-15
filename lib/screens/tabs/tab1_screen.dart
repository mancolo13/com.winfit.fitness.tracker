import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';

class Tab1Screen extends StatefulWidget {
  const Tab1Screen({super.key});

  @override
  State<Tab1Screen> createState() => _Tab1ScreenState();
}

class _Tab1ScreenState extends State<Tab1Screen> {
  final List<Map<String, dynamic>> _exercises = [
    {'name': 'Barbell Bench Press', 'sets': '4 sets • 80-90 kg', 'done': true},
    {'name': 'Incline Dumbbell Press', 'sets': '3 sets • 32 kg', 'done': true},
    {'name': 'Overhead Military Press', 'sets': '3 sets • 50 kg', 'done': true},
    {'name': 'Lateral Dumbbell Raises', 'sets': '4 sets • 12 kg', 'done': false},
    {'name': 'Skull Crushers (Triceps)', 'sets': '3 sets • 35 kg', 'done': false},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Win • Workout'),
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
                borderRadius: BorderRadius.circular(22),
                border: Border.all(color: AppTheme.primaryColor.withValues(alpha: 0.35)),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('CURRENT SESSION', style: TextStyle(color: AppTheme.primaryColor, fontWeight: FontWeight.bold, fontSize: 11)),
                      Text('⏱ 42 min • 340 kcal', style: TextStyle(color: Colors.white70, fontSize: 12)),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text('Push Day: Chest, Shoulders, Triceps', style: TextStyle(color: Colors.white, fontSize: 19, fontWeight: FontWeight.bold)),
                  SizedBox(height: 6),
                  Text('Target Volume: 8,400 kg • Intensity: 85%', style: TextStyle(color: Colors.white60, fontSize: 13)),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Text('Exercise Routine', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
            const SizedBox(height: 12),
            ..._exercises.map((e) => Container(
              margin: const EdgeInsets.only(bottom: 10),
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(color: AppTheme.cardColor, borderRadius: BorderRadius.circular(14)),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: e['done'] as bool ? AppTheme.primaryColor.withValues(alpha: 0.2) : Colors.white10,
                    radius: 18,
                    child: Icon(e['done'] as bool ? Icons.check : Icons.fitness_center, color: e['done'] as bool ? AppTheme.primaryColor : Colors.white38, size: 20),
                  ),
                  const SizedBox(width: 14),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(e['name'] as String, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14)),
                        Text(e['sets'] as String, style: const TextStyle(color: Colors.white60, fontSize: 12)),
                      ],
                    ),
                  ),
                  Checkbox(
                    value: e['done'] as bool,
                    activeColor: AppTheme.primaryColor,
                    checkColor: Colors.black,
                    onChanged: (v) => setState(() => e['done'] = v ?? false),
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
