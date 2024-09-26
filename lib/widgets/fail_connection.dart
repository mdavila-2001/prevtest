import 'package:cobanacademy/shapes/logo_shape.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../theme/colors.dart';

class FailConnection extends StatefulWidget {
  final String descriptions;

  const FailConnection({super.key, required this.descriptions});

  @override
  State<FailConnection> createState() => _FailConnectionState();
}

class _FailConnectionState extends State<FailConnection> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          LogoShape(width: 30.w),
          SizedBox(
            height: 3.h,
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 0.5.h),
            child: const Text(
              "¡Ups! Algo salió mal",
              textAlign: TextAlign.center,
              style: TextStyle(color: AppColor.white),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20.w),
            child: Text(
              widget.descriptions,
              textAlign: TextAlign.center,
              style: const TextStyle(color: AppColor.white),
            ),
          ),
          SizedBox(
            height: 6.h,
          ),
        ],
      ),
    );
  }
}
