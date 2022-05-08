part of 'basic.dart';

class PadVertical extends StatelessWidget {
  const PadVertical({required this.value, required this.child});

  final double value;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: value),
      child: child,
    );
  }
}

class PadHorizontal extends StatelessWidget {
  const PadHorizontal({required this.value, required this.child});

  final double value;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: value),
      child: child,
    );
  }
}

class PadAll extends StatelessWidget {
  const PadAll({required this.value, required this.child});

  final double value;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(value),
      child: child,
    );
  }
}

class PadBottom extends StatelessWidget {
  const PadBottom({required this.child, required this.value});

  final Widget child;
  final double value;

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(bottom: value), child: child);
  }
}

class PadRight extends StatelessWidget {
  const PadRight({required this.child, required this.value});

  final Widget child;
  final double value;

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(right: value), child: child);
  }
}

class PadLeft extends StatelessWidget {
  const PadLeft({required this.child, required this.value});

  final Widget child;
  final double value;

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(left: value), child: child);
  }
}

class PadTop extends StatelessWidget {
  const PadTop({required this.child, required this.value});

  final Widget child;
  final double value;

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(top: value), child: child);
  }
}
