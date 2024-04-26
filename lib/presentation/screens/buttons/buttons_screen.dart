import 'package:flutter/material.dart';

class ButtonsScreen extends StatelessWidget {
  static const String name = 'buttons_screen';

  const ButtonsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons Screen'),
      ),
      body: const _BottonsView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.arrow_back_ios_new_rounded),
      ),
    );
  }
}

class _BottonsView extends StatelessWidget {
  const _BottonsView();

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Wrap(
          spacing: 10,
          alignment: WrapAlignment.center,
          children: [
            ElevatedButton(onPressed: () {}, child: const Text('Elevated')),
            const ElevatedButton(
                onPressed: null, child: Text('Elevated disabled')),
            ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.access_alarm_rounded),
                label: const Text('Elevated icon')),
            FilledButton(onPressed: () {}, child: const Text('Filled')),
            FilledButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.accessibility_new),
              label: const Text('Filled icon'),
            ),
            OutlinedButton(onPressed: () {}, child: const Text('Outline')),
            OutlinedButton.icon(
              onPressed: () {},
              label: const Text('Outline icon'),
              icon: const Icon(Icons.cached_outlined),
            ),
            TextButton(onPressed: () {}, child: const Text('Text')),
            TextButton.icon(
                onPressed: () {},
                label: const Text('Text'),
                icon: const Icon(Icons.add_box)),
            const CustomButton(),
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.shield_moon_sharp)),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.shield_moon_sharp),
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(colors.primary),
                  iconColor: const MaterialStatePropertyAll(Colors.white)),
            )
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});
  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        color: colors.primary,
        child: InkWell(
          onTap: (){},
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text('Personalizado', style: TextStyle(color: Colors.white),),
            ),
        ),
      ),
    );
  }
}
