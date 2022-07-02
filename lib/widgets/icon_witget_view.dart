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
      children: [
        IconWidget(
          title: "Send",
          color: ApplicationConstants.iconWidgetColor,
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
          color: ApplicationConstants.iconWidgetColor,
          delayananimation: 1.5,
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.payment,
              color: Colors.orange,
            ),
          ),
        ),
        IconWidget(
          title: "Withdraw",
          color: ApplicationConstants.iconWidgetColor,
          delayananimation: 1.5,
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.payment,
              color: Colors.green,
            ),
          ),
        ),
        IconWidget(
          title: "Bill",
          color: ApplicationConstants.iconWidgetColor,
          delayananimation: 1.5,
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
          color: ApplicationConstants.iconWidgetColor,
          delayananimation: 1.5,
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.receipt,
              color: Colors.orange,
            ),
          ),
        ),
      ],
    );
  }
}
