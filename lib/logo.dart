import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LogoSVG extends StatelessWidget {
  const LogoSVG({super.key});

    @override
    Widget build(BuildContext context){
      return SvgPicture.asset(
        'logo.svg',
        height: 80,
        width: 160,
        colorFilter: ColorFilter.mode(
          Theme.of(context).colorScheme.onPrimary,
          BlendMode.srcIn,
        ),
      );
    }
}