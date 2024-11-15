import 'package:flutter/material.dart';
import 'package:kaizen/domain/models/challenger.dart';

class ChallengeView extends StatelessWidget {
  final Challenge challenge;
  final void Function(Challenge) onToggle;

  const ChallengeView(
      {super.key,
      required this.challenge,
      required this.onToggle});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: challenge.completed ? Colors.lightGreen : Colors.deepOrangeAccent,
          borderRadius: BorderRadius.circular(8.0)),
      child: Row(
        children: [
          Checkbox(
            value: challenge.completed,
            onChanged: (checked) {
              onToggle(challenge);
            },
            activeColor: Colors.white,
            checkColor: Colors.green,
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              challenge.name,
              style: const TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
