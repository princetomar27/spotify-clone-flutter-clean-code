import 'package:flutter/material.dart';
import 'package:spotifyflutterclone/common/helpers/is_dark_theme_helper.dart';

class MainAppBarWidget extends StatelessWidget {
  final Widget? appBarTitle;
  const MainAppBarWidget({super.key, this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      leading: IconButton(
        icon: Container(
          height: 55,
          width: 55,
          decoration: BoxDecoration(
            color: context.isDarkMode
                ? Colors.white.withOpacity(0.05)
                : Colors.black.withOpacity(0.05),
            shape: BoxShape.circle,
          ),
          child: Icon(
            Icons.arrow_back_ios,
            color: context.isDarkMode ? Colors.white : Colors.black,
            size: 15,
          ),
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      centerTitle: true,
      title: appBarTitle ?? const SizedBox.shrink(),
    );
  }
}
