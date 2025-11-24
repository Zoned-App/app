import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';

class JoinGame extends StatefulWidget {
  @Preview()
  const JoinGame({super.key});

  @override
  State<JoinGame> createState() => _JoinGameState();
}

class _JoinGameState extends State<JoinGame> {
  final TextEditingController _codeController = TextEditingController();

  @override
  void dispose() {
    _codeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double keyboardHeight = MediaQuery.of(context).viewInsets.bottom;

    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(
          left: 10,
          right: 10,
          top: 10,
          bottom: keyboardHeight + 10,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          spacing: 10,
          children: [
            Text("Join Game", style: Theme.of(context).textTheme.displaySmall),
            TextField(
              controller: _codeController,
              autofocus: true,
              autocorrect: false,
              enableSuggestions: false,
              maxLength: 6,
              enableIMEPersonalizedLearning: false,
              textCapitalization: .characters,
              textAlign: .center,

              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                label: Text("Enter Game Code"),
                floatingLabelAlignment: .center,
                floatingLabelBehavior: .always,
                counterText: "",
              ),

              style: TextStyle(
                fontSize: 24,
                letterSpacing: 10,
                fontWeight: .bold,
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: FilledButton(onPressed: () {}, child: const Text("Join")),
            ),
          ],
        ),
      ),
    );
  }
}
