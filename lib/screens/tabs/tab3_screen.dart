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
                  Text('Total Volume This Week', style: TextStyle(color: Colors.white70, fontSize: 12)),
                  SizedBox(height: 6),
                  Text('28,450 kg', style: TextStyle(color: AppTheme.primaryColor, fontSize: 32, fontWeight: FontWeight.bold)),
                  SizedBox(height: 6),
                  Text('+12% overload progress vs last month', style: TextStyle(color: Colors.greenAccent, fontSize: 12)),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Text('Personal Records (1RM)', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
            const SizedBox(height: 12),
            _buildPr('Bench Press', '115 kg', '+5 kg in 1 month'),
            _buildPr('Barbell Back Squat', '150 kg', '+10 kg in 2 months'),
            _buildPr('Barbell Deadlift', '185 kg', 'Gym Record'),
            _buildPr('Weighted Pull-ups', '+32 kg for 5 reps', 'Outstanding Back Strength'),
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
