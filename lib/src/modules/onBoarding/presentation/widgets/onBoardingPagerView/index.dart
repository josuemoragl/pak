import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnBoardingPagerView extends StatelessWidget {
  const OnBoardingPagerView({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        Column(
          children: [
            Flexible(
              fit: FlexFit.tight,
              child: SvgPicture.asset('assets/images/svg/tour_1.svg'),
            ),
            Flexible(
                fit: FlexFit.tight,
                child: SvgPicture.asset('assets/images/svg/tour_1.svg')),
          ],
        ),
        Center(child: SvgPicture.asset('assets/images/svg/tour_2.svg')),
        Center(child: SvgPicture.asset('assets/images/svg/tour_3.svg')),
        Center(child: SvgPicture.asset('assets/images/svg/tour_4.svg'))
      ],
    );
  }
}

class OnBoardingStep extends StatelessWidget {
  const OnBoardingStep({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
