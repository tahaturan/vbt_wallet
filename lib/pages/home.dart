import 'package:flutter/material.dart';
import 'package:vbt_staj_ornek_app/widgets/icon_widget.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF181B2A),
      appBar: AppBar(
        backgroundColor: const Color(0xFF181B2A),
        elevation: 0,
        actions: [
          Row(
            children: [
              Column(
                children: const [
                  Text(
                    "Welcome back",
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text(
                    "VBT",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              Container(
                height: 50,
                width: 50,
                margin: const EdgeInsets.only(left: 200, right: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: const Color(0xFF272A3F),
                ),
                child: const Icon(
                  Icons.person,
                  color: Colors.white,
                ),
              )
            ],
          ),
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
                Row(
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
                      color: const Color(0XFF17334E),
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
                      color: const Color(0XFF17334E),
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
                      color: const Color(0XFF17334E),
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
                      color: const Color(0XFF17334E),
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
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
