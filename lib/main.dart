import 'package:feather_icons/feather_icons.dart' as fv1;
import 'package:flutter_feather_icons/flutter_feather_icons.dart' as fv2;
import 'package:feather_icons_svg/feather_icons_svg.dart' as fv3;
import 'package:flutter/material.dart';
import 'package:flutter_lucide/flutter_lucide.dart' as lv1;
import 'package:lucide_icons_flutter/lucide_icons.dart' as lv2;

void main() {
  runApp(const MyApp());
}

class AllIcons {
  static Icon materialIcon({
    required Color color,
    required double size,
  }) {
    return Icon(
      Icons.square_outlined,
      color: color,
      size: size,
    );
  }

  static Widget featherIconSvg({
    required Color color,
    required double size,
  }) {
    return fv3.FeatherIcon(
      fv3.FeatherIcons.square,
      color: color,
      size: size,
    );
  }

  static Icon featherIconV1({
    required Color color,
    required double size,
  }) {
    return Icon(
      fv1.FeatherIcons.square,
      color: color,
      size: size,
    );
  }

  static Icon featherIconV2({
    required Color color,
    required double size,
  }) {
    return Icon(
      fv2.FeatherIcons.square,
      color: color,
      size: size,
    );
  }

  static Icon lucideIconV1({
    required Color color,
    required double size,
  }) {
    return Icon(
      lv1.LucideIcons.square,
      color: color,
      size: size,
    );
  }

  static Icon lucideIconV2({
    required Color color,
    required double size,
  }) {
    return Icon(
      lv2.LucideIcons.square,
      color: color,
      size: size,
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: const SafeArea(
        child: Column(
          children: [
            _OnlyIconsComparison(),
            SizedBox(height: 16),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  child: _IconsWithTextComparison(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _OnlyIconsComparison extends StatelessWidget {
  // ignore: use_super_parameters
  const _OnlyIconsComparison({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          color: Colors.black,
          child: AllIcons.materialIcon(
            color: Colors.white,
            size: 70,
          ),
        ),
        Container(
          color: Colors.black,
          height: 70,
          width: 70,
          child: Center(
            child: AllIcons.featherIconSvg(
              color: Colors.white,
              size: 67,
            ),
          ),
        ),
        Container(
          color: const Color.fromRGBO(0, 0, 0, 1),
          child: AllIcons.featherIconV1(
            color: Colors.white,
            size: 70,
          ),
        ),
        Container(
          color: Colors.black,
          child: AllIcons.featherIconV2(
            color: Colors.white,
            size: 70,
          ),
        ),
        Container(
          color: Colors.black,
          child: AllIcons.lucideIconV1(
            color: Colors.white,
            size: 70,
          ),
        ),
        Container(
          color: Colors.black,
          child: AllIcons.lucideIconV2(
            color: Colors.white,
            size: 70,
          ),
        ),
      ],
    );
  }
}

class _IconsWithTextComparison extends StatelessWidget {
  // ignore: use_super_parameters
  const _IconsWithTextComparison({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const addBorders = true;
    return Column(
      children: <Widget>[
        _IconWithTexts(
          addBorders: addBorders,
          icon: AllIcons.materialIcon(
            color: Colors.black,
            size: 20,
          ),
          iconSource: 'Material Icons',
        ),
        const SizedBox(height: 16),
        _IconWithTexts(
          addBorders: addBorders,
          icon: AllIcons.featherIconSvg(
            color: Colors.black,
            size: 20,
          ),
          iconSource: 'Feather Icons SVG',
        ),
        const SizedBox(height: 16),
        _IconWithTexts(
          addBorders: addBorders,
          icon: AllIcons.featherIconV1(
            color: Colors.black,
            size: 20,
          ),
          iconSource: 'Feather Icons V1',
        ),
        const SizedBox(height: 16),
        _IconWithTexts(
          addBorders: addBorders,
          icon: AllIcons.featherIconV2(
            color: Colors.black,
            size: 20,
          ),
          iconSource: 'Feather Icons V2',
        ),
        const SizedBox(height: 16),
        _IconWithTexts(
          addBorders: addBorders,
          icon: AllIcons.lucideIconV1(
            color: Colors.black,
            size: 20,
          ),
          iconSource: 'Lucide Icons V1',
        ),
        const SizedBox(height: 16),
        _IconWithTexts(
          addBorders: addBorders,
          icon: AllIcons.lucideIconV2(
            color: Colors.black,
            size: 20,
          ),
          iconSource: 'Lucide Icons V2',
        ),
      ],
    );
  }
}

class _IconWithTexts extends StatelessWidget {
  // ignore: use_super_parameters
  const _IconWithTexts({
    required this.addBorders,
    required this.icon,
    required this.iconSource,
    Key? key,
  }) : super(key: key);

  final bool addBorders;
  final Widget icon;
  final String iconSource;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          iconSource,
          style: const TextStyle(
            fontFamily: 'lato',
          ),
        ),
        const SizedBox(height: 4),
        Container(
          decoration: BoxDecoration(
            border: addBorders
                ? Border.all(
                    color: Colors.blueAccent,
                  )
                : null,
          ),
          child: _SmallTextRow(
            icon: icon,
          ),
        ),
        const SizedBox(height: 8),
        Container(
          decoration: BoxDecoration(
            border: addBorders
                ? Border.all(
                    color: Colors.blueAccent,
                  )
                : null,
          ),
          child: _LargeTextRow(
            icon: icon,
          ),
        ),
      ],
    );
  }
}

class _SmallTextRow extends StatelessWidget {
  // ignore: use_super_parameters
  const _SmallTextRow({
    required this.icon,
    Key? key,
  }) : super(key: key);

  static const String _smallText = 'This is a text';

  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        icon,
        const SizedBox(width: 8),
        const Text(
          _smallText,
          style: TextStyle(
            fontFamily: 'Lato',
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}

class _LargeTextRow extends StatelessWidget {
  // ignore: use_super_parameters
  const _LargeTextRow({
    required this.icon,
    Key? key,
  }) : super(key: key);

  static const String _largeText =
      'This is a text containing a lot of characters just to test how the icons are centered with respect to a text that can be put in multiple lines';

  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        icon,
        const SizedBox(width: 8),
        const Flexible(
          child: Text(
            _largeText,
            style: TextStyle(
              fontFamily: 'Lato',
              fontSize: 16,
            ),
          ),
        ),
      ],
    );
  }
}
