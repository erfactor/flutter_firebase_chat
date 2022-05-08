part of 'basic.dart';

class AnimatedVisibility extends StatelessWidget {
  const AnimatedVisibility({required this.isVisible, required this.child});
  final Widget child;
  final bool isVisible;

  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
      duration: 200.milliseconds,
      firstCurve: Curves.easeOutQuad,
      secondCurve: Curves.easeOutQuad,
      crossFadeState: isVisible ? CrossFadeState.showFirst : CrossFadeState.showSecond,
      firstChild: child,
      secondChild: const SizedBox(width: double.infinity, height: 0),
    );
  }
}

class KeyAnimatedSwitcher extends StatelessWidget {
  const KeyAnimatedSwitcher({required this.keyValue, required this.child});
  final Widget child;
  final Object keyValue;

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: 200.milliseconds,
      child: Container(
        key: ValueKey(keyValue),
        child: child,
      ),
    );
  }
}
