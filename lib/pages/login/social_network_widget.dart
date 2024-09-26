import 'package:flutter/material.dart';
import '../../theme/colors.dart';

class SocialNetworkWidget extends StatelessWidget {
  final String label;
  final String asset;
  final void Function()? onPressed;

  const SocialNetworkWidget(
      {super.key, required this.label, required this.asset, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            elevation: 0,
            backgroundColor: AppColor.buttonGray,
            foregroundColor: AppColor.primaryDarkPurple,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16))),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              asset,
              width: 24,
              height: 24,
            ),
            const SizedBox(
              width: 12,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 12, top: 24, bottom: 24),
                child: Center(child: Text(label)),
              ),
            ),
          ],
        ));
  }
}
