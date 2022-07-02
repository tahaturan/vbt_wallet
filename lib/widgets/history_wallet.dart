import 'package:flutter/material.dart';
import 'package:vbt_staj_ornek_app/constants/app_constants.dart';

class HistoryWallet extends StatelessWidget {
  final String title;
  final String image;
  final String day;
  final String time;
  final String money;
  final bool isPossitive;
  const HistoryWallet(
      {Key? key,
      required this.title,
      required this.image,
      required this.day,
      required this.time,
      required this.money,
      required this.isPossitive})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ApplicationConstants.sizeHeight(context, 0.085),
      width: ApplicationConstants.sizeWidth(context, 0.9),
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: const Color(0XFF282A40),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(image),
          ),
          SizedBox(
            width: ApplicationConstants.sizeWidth(context, 0.03),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: const TextStyle(color: Colors.white),
              ),
              Row(
                children: [
                  Text(
                    time,
                    style: const TextStyle(color: Colors.grey),
                  ),
                  Text(
                    day,
                    style: const TextStyle(color: Colors.grey),
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            width: ApplicationConstants.sizeWidth(context, 0.16),
          ),
          Text(
            isPossitive ? "+" : "-",
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          Image.asset(
            "assets/images/us-dollar.png",
            width: ApplicationConstants.sizeWidth(context, 0.035),
            height: ApplicationConstants.sizeHeight(context, 0.035),
            color: Colors.white,
          ),
          Text(
            money,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
