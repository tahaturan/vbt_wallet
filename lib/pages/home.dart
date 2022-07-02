import 'package:flutter/material.dart';
import 'package:vbt_staj_ornek_app/constants/app_constants.dart';
import 'package:vbt_staj_ornek_app/widgets/appbar_action_view.dart';
import 'package:vbt_staj_ornek_app/widgets/history_wallet.dart';
import 'package:vbt_staj_ornek_app/widgets/icon_witget_view.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ApplicationConstants.primaryBackgroudColor,
      appBar: AppBar(
        backgroundColor: ApplicationConstants.primaryBackgroudColor,
        elevation: 0,
        actions: const [
          AppBarActionsView(),
        ],
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                //? Karlar Listesi
                //*Icon Widget
                const IconWidgetView(),
                SizedBox(
                  height: ApplicationConstants.sizeWidth(context, 0.05),
                ),
                //*History Wallet
                const HistoryWallet(
                    title: "Spotify Subscription",
                    image:
                        "https://upload.wikimedia.org/wikipedia/commons/thumb/8/84/Spotify_icon.svg/1982px-Spotify_icon.svg.png",
                    day: "21Jun 2021",
                    time: "12:01 am",
                    money: "11.90",
                    isPossitive: false),
                const HistoryWallet(
                    title: "Pinterest Salary",
                    image:
                        "https://seeklogo.com/images/P/pinterest-logo-CA98998DCB-seeklogo.com.png",
                    day: "20Jun 2021",
                    time: "09:0 pm",
                    money: "63.0",
                    isPossitive: true)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
