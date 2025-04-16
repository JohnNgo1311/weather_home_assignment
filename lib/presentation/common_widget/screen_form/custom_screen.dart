import 'package:flutter/material.dart';

import '../../../utils/size_config.dart';

class CustomScreen extends StatefulWidget {
  final Color? backgroundColor;
  final Color? appComponentColor;
  // final bool? isShowTittle;
  final String? title;
  final Widget child;
  final bool? isScrollable;
  const CustomScreen(
      {super.key,
      // this.isShowTittle = true,
      this.backgroundColor = Colors.white,
      this.appComponentColor = Colors.white,
      required this.child,
      this.title,
      this.isScrollable = false});

  @override
  State<CustomScreen> createState() => _CustomScreenState();
}

class _CustomScreenState extends State<CustomScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    // ignore: unused_element
    return Scaffold(
      backgroundColor: widget.backgroundColor,
      body: SafeArea(
          child: widget.isScrollable == true
              ? SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: widget.child,
                )
              : widget.child),
    );
  }
}
