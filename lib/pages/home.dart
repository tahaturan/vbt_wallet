import 'package:flutter/material.dart';
import 'package:vbt_staj_ornek_app/constants/app_constants.dart';
import 'package:vbt_staj_ornek_app/widgets/appbar_action_view.dart';
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
      backgroundColor: ApplicationConstants.primaryBackroudColor,
      appBar: AppBar(
        backgroundColor: ApplicationConstants.primaryBackroudColor,
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
              children: const [
                //? Karlar Listesi
                IconWidgetView()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
