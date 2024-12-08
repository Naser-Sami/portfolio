import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '/config/_config.dart';
import '/core/_core.dart';

class ContactsIconsWidget extends StatelessWidget {
  const ContactsIconsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        IconButton(
          onPressed: () async {
            await Clipboard.setData(const ClipboardData(text: "naser_ebedo@icloud.com"));

            if (context.mounted) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Email copied to clipboard')),
              );
            }
          },
          icon: const Icon(CupertinoIcons.mail),
        ),
        IconButton(
          onPressed: () async {
            await Clipboard.setData(const ClipboardData(text: "+962795900291"));

            if (context.mounted) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Phone number copied to clipboard')),
              );
            }
          },
          icon: const Icon(CupertinoIcons.phone),
        ),
        IconButton(
          onPressed: () async => await TFunctions.launchUrl("https://github.com/Naser-Sami"),
          icon: SvgIconWidget(
            name: 'git_hub',
            color: context.isDarkMode ? Colors.white : Colors.black,
          ),
        ),
        TSize.s06.toHeight,
        IconButton(
          onPressed: () async => await TFunctions.launchUrl("https://www.linkedin.com/in/naser-ebedo/"),
          icon: SvgIconWidget(
            name: 'linkedin',
            color: context.isDarkMode ? Colors.white : Colors.black,
          ),
        ),
        TSize.s06.toHeight,
        IconButton(
          onPressed: () async => await TFunctions.launchUrl("https://stackoverflow.com/users/22353618/naser-ebedo"),
          icon: SvgIconWidget(
            name: 'stack_overflow',
            color: context.isDarkMode ? Colors.white : Colors.black,
          ),
        ),
        TSize.s06.toHeight,
      ],
    );
  }
}
