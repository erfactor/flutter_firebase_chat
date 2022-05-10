// ignore_for_file: long-parameter-list
part of 'basic.dart';

extension NullableWidgetExtension on Widget? {
  Widget get sliver => SliverToBoxAdapter(child: this);
}

extension WidgetExtension on Widget {
  Widget get scrollView => SingleChildScrollView(child: this);
  Widget get expanded => Expanded(child: this);
  Widget get center => Center(child: this);
  Widget get fitted => FittedBox(child: this);
  Widget positioned({double? left, double? top, double? right, double? bottom, double? width, double? height}) =>
      Positioned(left: left, top: top, right: right, bottom: bottom, width: width, height: height, child: this);
  Widget align(Alignment alignment) => Align(alignment: alignment, child: this);
  Widget size({double? width, double? height}) => SizedBox(width: width, height: height, child: this);
  Widget width(double? value) => SizedBox(width: value, child: this);
  Widget height(double? value) => SizedBox(height: value, child: this);
  Widget squared(double? size) => SizedBox(width: size, height: size, child: this);
  Widget colored(Color color) => ColoredBox(color: color, child: this);
  Widget decorated(BoxDecoration decoration) => DecoratedBox(decoration: decoration, child: this);
  Widget absorbPointer({bool absorbing = true}) => AbsorbPointer(absorbing: absorbing, child: this);
  Widget ignorePointer({bool ignoring = true}) => IgnorePointer(ignoring: ignoring, child: this);
}

extension PaddingExtension on Widget {
  Widget padLTRB(double left, double top, double right, double bottom) {
    return Padding(padding: EdgeInsets.fromLTRB(left, top, right, bottom), child: this);
  }

  Widget pad({double left = 0, double top = 0, double right = 0, double bottom = 0}) {
    return Padding(padding: EdgeInsets.fromLTRB(left, top, right, bottom), child: this);
  }

  Widget padSliver(EdgeInsets padding) {
    return SliverPadding(padding: padding, sliver: this);
  }

  Widget padSymmetric({double horizontal = 0, double vertical = 0}) {
    return Padding(padding: EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical), child: this);
  }

  Widget padAll(double value) => PadAll(value: value, child: this);
  Widget get padAll1 => padAll(1);
  Widget get padAll2 => padAll(2);
  Widget get padAll4 => padAll(4);
  Widget get padAll6 => padAll(6);
  Widget get padAll8 => padAll(8);
  Widget get padAll10 => padAll(10);
  Widget get padAll12 => padAll(12);
  Widget get padAll16 => padAll(16);
  Widget get padAll20 => padAll(20);
  Widget get padAll24 => padAll(24);

  Widget padHorizontal(double value) => PadHorizontal(value: value, child: this);
  Widget get padHorizontal1 => padHorizontal(1);
  Widget get padHorizontal2 => padHorizontal(2);
  Widget get padHorizontal4 => padHorizontal(4);
  Widget get padHorizontal6 => padHorizontal(6);
  Widget get padHorizontal8 => padHorizontal(8);
  Widget get padHorizontal10 => padHorizontal(10);
  Widget get padHorizontal12 => padHorizontal(12);
  Widget get padHorizontal16 => padHorizontal(16);
  Widget get padHorizontal20 => padHorizontal(20);
  Widget get padHorizontal24 => padHorizontal(24);

  Widget padVertical(double value) => PadVertical(value: value, child: this);
  Widget get padVertical1 => padVertical(1);
  Widget get padVertical2 => padVertical(2);
  Widget get padVertical4 => padVertical(4);
  Widget get padVertical6 => padVertical(6);
  Widget get padVertical8 => padVertical(8);
  Widget get padVertical10 => padVertical(10);
  Widget get padVertical12 => padVertical(12);
  Widget get padVertical16 => padVertical(16);
  Widget get padVertical20 => padVertical(20);
  Widget get padVertical24 => padVertical(24);
  Widget get padVertical48 => padVertical(48);
  Widget get padVertical64 => padVertical(64);

  Widget padTop(double value) => PadTop(value: value, child: this);
  Widget get padTop1 => padTop(1);
  Widget get padTop2 => padTop(2);
  Widget get padTop4 => padTop(4);
  Widget get padTop6 => padTop(6);
  Widget get padTop8 => padTop(8);
  Widget get padTop10 => padTop(10);
  Widget get padTop12 => padTop(12);
  Widget get padTop16 => padTop(16);
  Widget get padTop20 => padTop(20);
  Widget get padTop24 => padTop(24);

  Widget padLeft(double value) => PadLeft(value: value, child: this);
  Widget get padLeft1 => padLeft(1);
  Widget get padLeft2 => padLeft(2);
  Widget get padLeft4 => padLeft(4);
  Widget get padLeft6 => padLeft(6);
  Widget get padLeft8 => padLeft(8);
  Widget get padLeft10 => padLeft(10);
  Widget get padLeft12 => padLeft(12);
  Widget get padLeft16 => padLeft(16);
  Widget get padLeft20 => padLeft(20);
  Widget get padLeft24 => padLeft(24);

  Widget padRight(double value) => PadRight(value: value, child: this);
  Widget get padRight1 => padRight(1);
  Widget get padRight2 => padRight(2);
  Widget get padRight4 => padRight(4);
  Widget get padRight6 => padRight(6);
  Widget get padRight8 => padRight(8);
  Widget get padRight10 => padRight(10);
  Widget get padRight12 => padRight(12);
  Widget get padRight16 => padRight(16);
  Widget get padRight20 => padRight(20);
  Widget get padRight24 => padRight(24);

  Widget padBottom(double value) => PadBottom(value: value, child: this);
  Widget get padBottom1 => padBottom(1);
  Widget get padBottom2 => padBottom(2);
  Widget get padBottom4 => padBottom(4);
  Widget get padBottom6 => padBottom(6);
  Widget get padBottom8 => padBottom(8);
  Widget get padBottom10 => padBottom(10);
  Widget get padBottom12 => padBottom(12);
  Widget get padBottom16 => padBottom(16);
  Widget get padBottom20 => padBottom(20);
  Widget get padBottom24 => padBottom(24);
}
