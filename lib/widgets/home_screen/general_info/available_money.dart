import 'package:finance_app/utils/constants/app_text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AvailableMoney extends StatelessWidget {
  final double availableMoney;
  const AvailableMoney({super.key, required this.availableMoney});

  @override
  Widget build(BuildContext context) {
    return Text(
      '\$${num.parse(availableMoney.toStringAsFixed(2))}',
      style: AppTextStyles.profAvailableMoney,
    );
  }
}
