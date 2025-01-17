import 'package:flutter/material.dart';
import 'package:s_shop_lao/themes/res/layout.dart';

class MenuLayout extends StatelessWidget {
  const MenuLayout({
    super.key,
    required this.productInfo,
    required this.productBottomSheet,
  });

  final Widget productInfo;
  final Widget productBottomSheet;

  @override
  Widget build(BuildContext context) {
    return context.layout(
      /// Mobile & Tablet
      Column(
        children: [
          Expanded(child: productInfo),
          productBottomSheet,
        ],
      ),

      /// Desktop
      desktop: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(flex: 2, child: productInfo),
            const SizedBox(width: 16),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(top: 32),
                child: productBottomSheet,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
