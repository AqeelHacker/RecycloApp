import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialLoginButtons extends StatefulWidget {
  const SocialLoginButtons({super.key});

  @override
  State<SocialLoginButtons> createState() => _SocialLoginButtonsState();
}

class _SocialLoginButtonsState extends State<SocialLoginButtons> {
  int hoveredIndex = -1;

  final List<IconData> icons = [
    FontAwesomeIcons.google,
    FontAwesomeIcons.facebook,
    FontAwesomeIcons.apple,
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(icons.length, (index) {
        return MouseRegion(
          onEnter: (_) => setState(() => hoveredIndex = index),
          onExit: (_) => setState(() => hoveredIndex = -1),
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
            onTap: () {
              debugPrint("Icon $index clicked");
            },
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              margin: const EdgeInsets.symmetric(horizontal: 8),
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: hoveredIndex == index ? Colors.grey.shade300 : Colors.transparent,
                shape: BoxShape.circle,
              ),
              child: FaIcon(
                icons[index],
                size: 32,
                color: Colors.black,
              ),
            ),
          ),
        );
      }),
    );
  }
}
