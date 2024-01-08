import 'package:flutter/material.dart';

import '../../../../../core/themes/colors/colors.dart';
import '../../../../../core/themes/colors/styles.dart';

class CustomHomeTextBestSeller extends StatelessWidget {
  const CustomHomeTextBestSeller({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(text: 'Best ', style: Styles.fontSize25Bold),
          TextSpan(
            text: 'Seller',
            style: Styles.fontSize18SemiBold
                .copyWith(fontWeight: FontWeight.bold, color: kamberColor),
          ),
        ],
      ),
    );
  }
}
