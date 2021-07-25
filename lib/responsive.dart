
import 'package:flutter/cupertino.dart';

typedef Builder = Function(BuildContext);
class Responsive extends StatelessWidget {

  final Builder desktop;
  final Builder? tablet;
  final Builder mobile;

  Responsive({required this.desktop, this.tablet, required this.mobile});

  static bool isMobile(BuildContext context) {
    return MediaQuery.of(context).size.width < 850;
  }

  static bool isTablet(BuildContext context) {
    return MediaQuery.of(context).size.width < 1100 && MediaQuery.of(context).size.width >= 850;
  }

  static bool isDesktop(BuildContext context) {
    return MediaQuery.of(context).size.width >= 1000;
  }

  @override
  Widget build(BuildContext context) {
    if(isMobile(context)) {
      return mobile.call(context);
    }
    if(isTablet(context) && tablet != null) {
      return tablet!.call(context);
    }
    return desktop.call(context);
  }
}