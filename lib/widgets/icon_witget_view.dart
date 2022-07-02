import 'package:flutter/material.dart';
import 'package:vbt_staj_ornek_app/constants/app_constants.dart';
import 'package:vbt_staj_ornek_app/widgets/icon_widget.dart';

class IconWidgetView extends StatelessWidget {
  const IconWidgetView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconWidget(
          title: "Send",
          color: const Color(0XFF17334E),
          delayananimation: 1.5,
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.send,
              color: Colors.blue,
            ),
          ),
        ),
        IconWidget(
          title: "Pay",
          color: const Color(0XFF411C2E),
          delayananimation: 1.7,
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.payments,
              color: Colors.red,
            ),
          ),
        ),
        IconWidget(
          title: "Withdraw",
          color: const Color(0XFF163333),
          delayananimation: 1.9,
          child: Image.asset(
            "assets/images/icons8-cash-withdrawal-96.png",
            width: ApplicationConstants.sizeWidth(context, 0.08),
            height: ApplicationConstants.sizeHeight(context, 0.08),
            color: Colors.green,
          ),
        ),
        IconWidget(
          title: "Bill",
          color: const Color(0XFF32204D),
          delayananimation: 2.1,
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.receipt,
              color: Colors.purple,
            ),
          ),
        ),
        IconWidget(
          title: "Voucher",
          color: const Color(0XFF412D27),
          delayananimation: 2.3,
          child: Image.asset(
            "assets/images/icons8-voucher-96.png",
            width: ApplicationConstants.sizeWidth(context, 0.08),
            height: ApplicationConstants.sizeHeight(context, 0.08),
            color: Colors.orange,
          ),
        ),
      ],
    );
  }
}
