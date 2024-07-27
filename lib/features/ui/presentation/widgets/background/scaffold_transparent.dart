import 'package:flutter/material.dart';

final class ScaffoldTransparent extends Scaffold {
  const ScaffoldTransparent({
    super.key,
    super.appBar,
    super.body,
    super.floatingActionButton,
    super.floatingActionButtonLocation,
    super.floatingActionButtonAnimator,
    super.persistentFooterButtons,
    super.drawer,
    super.onDrawerChanged,
    super.endDrawer,
    super.onEndDrawerChanged,
    super.bottomNavigationBar,
    super.bottomSheet,
    super.resizeToAvoidBottomInset,
    super.primary,
    super.drawerDragStartBehavior,
    super.extendBody,
    super.extendBodyBehindAppBar,
    super.drawerScrimColor,
    required bool hasBackgroundImage,
  }) : _hasBackgroundImage = hasBackgroundImage;

  final bool _hasBackgroundImage;

  @override
  Color? get backgroundColor => _hasBackgroundImage ? Colors.transparent : super.backgroundColor;
}
