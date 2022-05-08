part of 'basic.dart';

class ConditionSwitcher extends StatelessWidget {
  final bool condition;
  final Widget Function(BuildContext context) trueBuilder;
  final Widget Function(BuildContext context) falseBuilder;
  final bool animate;

  const ConditionSwitcher({required this.condition, required this.trueBuilder, required this.falseBuilder, this.animate = false});

  @override
  Widget build(BuildContext context) {
    final child = condition ? trueBuilder(context) : falseBuilder(context);
    return animate
      ? AnimatedSwitcher(
          duration: 150.milliseconds,
          child: child,
        )
      : child;
  }
}

class ShowIf extends ConditionSwitcher {
  static Widget shrinkBuilder(BuildContext context) {
    return Shrink;
  }

  const ShowIf({
    required bool condition,
    required Widget Function(BuildContext) builder,
    bool animate = false,
  }) : super(
    condition: condition,
    trueBuilder: builder,
    falseBuilder: shrinkBuilder,
    animate: animate,
  );
}
