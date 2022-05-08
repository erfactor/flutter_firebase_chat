// ignore_for_file: non_constant_identifier_names, constant_identifier_names
part of 'basic.dart';

const Widget Shrink = SizedBox.shrink();
const Widget ShrinkSliver = SliverToBoxAdapter(child: Shrink);
const Widget Expand = SizedBox.expand();

Widget Width(double width) => SizedBox(width: width);
Widget Height(double height) => SizedBox(height: height);
Widget HeightSliver(double height) => SliverToBoxAdapter(child: Height(height));

const Widget Width1 = SizedBox(width: 1);
const Widget Width2 = SizedBox(width: 2);
const Widget Width4 = SizedBox(width: 4);
const Widget Width6 = SizedBox(width: 6);
const Widget Width8 = SizedBox(width: 8);
const Widget Width10 = SizedBox(width: 10);
const Widget Width12 = SizedBox(width: 12);
const Widget Width14 = SizedBox(width: 14);
const Widget Width16 = SizedBox(width: 16);
const Widget Width18 = SizedBox(width: 18);
const Widget Width20 = SizedBox(width: 20);
const Widget Width24 = SizedBox(width: 24);
const Widget Width32 = SizedBox(width: 32);
const Widget Width40 = SizedBox(width: 40);
const Widget Width64 = SizedBox(width: 64);

const Widget Height1 = SizedBox(height: 1);
const Widget Height2 = SizedBox(height: 2);
const Widget Height4 = SizedBox(height: 4);
const Widget Height6 = SizedBox(height: 6);
const Widget Height8 = SizedBox(height: 8);
const Widget Height10 = SizedBox(height: 10);
const Widget Height12 = SizedBox(height: 12);
const Widget Height14 = SizedBox(height: 14);
const Widget Height16 = SizedBox(height: 16);
const Widget Height18 = SizedBox(height: 18);
const Widget Height20 = SizedBox(height: 20);
const Widget Height24 = SizedBox(height: 24);
const Widget Height32 = SizedBox(height: 32);
const Widget Height40 = SizedBox(height: 40);
const Widget Height64 = SizedBox(height: 64);

const Widget Height1Sliver = SliverToBoxAdapter(child: SizedBox(height: 1));
const Widget Height2Sliver = SliverToBoxAdapter(child: SizedBox(height: 2));
const Widget Height4Sliver = SliverToBoxAdapter(child: SizedBox(height: 4));
const Widget Height8Sliver = SliverToBoxAdapter(child: SizedBox(height: 8));
const Widget Height12Sliver = SliverToBoxAdapter(child: SizedBox(height: 12));
const Widget Height16Sliver = SliverToBoxAdapter(child: SizedBox(height: 16));
const Widget Height24Sliver = SliverToBoxAdapter(child: SizedBox(height: 24));
const Widget Height32Sliver = SliverToBoxAdapter(child: SizedBox(height: 32));
const Widget Height64Sliver = SliverToBoxAdapter(child: SizedBox(height: 64));
