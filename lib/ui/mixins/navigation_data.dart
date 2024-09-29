class NavigationData {
  String route;
  bool clear;
  dynamic arguments;
  bool navigationBack;
  bool nativeNavigation;

  NavigationData({
    required this.route,
    required this.clear,
    this.arguments,
    this.navigationBack = false,
    this.nativeNavigation = false,
  });
}
