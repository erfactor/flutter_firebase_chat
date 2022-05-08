part of 'basic.dart';

class ColumnMin extends Column {
  ColumnMin({
    MainAxisAlignment main = MainAxisAlignment.start,
    CrossAxisAlignment cross = CrossAxisAlignment.center,
    Key? key,
    required List<Widget> children,
  }) : super(mainAxisSize: MainAxisSize.min, mainAxisAlignment: main, crossAxisAlignment: cross, key: key, children: children);
}

class ColumnMax extends Column {
  ColumnMax({
    MainAxisAlignment main = MainAxisAlignment.start,
    CrossAxisAlignment cross = CrossAxisAlignment.center,
    Key? key,
    required List<Widget> children,
  }) : super(mainAxisSize: MainAxisSize.max, mainAxisAlignment: main, crossAxisAlignment: cross, key: key, children: children);
}

class RowMin extends Row {
  RowMin({
    MainAxisAlignment main = MainAxisAlignment.start,
    CrossAxisAlignment cross = CrossAxisAlignment.center,
    Key? key,
    required List<Widget> children,
  }) : super(mainAxisSize: MainAxisSize.min, mainAxisAlignment: main, crossAxisAlignment: cross, key: key, children: children);
}

class RowMax extends Row {
  RowMax({
    MainAxisAlignment main = MainAxisAlignment.start,
    CrossAxisAlignment cross = CrossAxisAlignment.center,
    Key? key,
    required List<Widget> children,
  }) : super(mainAxisSize: MainAxisSize.max, mainAxisAlignment: main, crossAxisAlignment: cross, key: key, children: children);
}
