import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zoned_app/pages/join_game.dart';

class Home extends StatelessWidget {
  @Preview(name: 'HomePage')
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 10,
              children: [
                SvgPicture.asset(
                  "assets/logos/optimized/vector/logo-colored.svg",
                  width: 100,
                ),
                Text("Zoned", style: Theme.of(context).textTheme.displayLarge),
              ],
            ),
            Column(
              spacing: 10,
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 40,
                  child: OutlinedButton(
                    onPressed: () {},
                    child: Text("Create Game"),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  height: 40,
                  child: FilledButton(
                    onPressed: () => _joinGame(context),
                    child: Text("Join Game"),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _joinGame(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return JoinGame();
      },
    );
  }
}
