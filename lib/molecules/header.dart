import 'package:flutter/material.dart';

import '../atoms/wc_text.dart';
import '../fundation/color_fundation.dart';

class OurAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Icon iconAppBarr;

  const OurAppBar(
      {super.key,
      this.title = 'Arquitectura limpia',
      this.iconAppBarr = const Icon(Icons.add)});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: footerBackground,
      title: H1(
        text: title,
        key: const Key('head-wc'),
      ),
      actions: [
        IconButton(
          icon: iconAppBarr,
          onPressed: () => {debugPrint("Oprimiste +")},
        ),
        IconButton(
          icon: const Icon(Icons.navigate_next),
          onPressed: () => {debugPrint("Oprimiste >")},
        )
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
