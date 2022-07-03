import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:vbt_staj_ornek_app/animation/fade_animation.dart';
import 'package:vbt_staj_ornek_app/constants/app_constants.dart';
import 'package:vbt_staj_ornek_app/model/data_card.dart';

class SwiperCard extends StatelessWidget {
  const SwiperCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeAnimation(
      delay: 1.5,
      child: Swiper(
        itemCount: Cards.cardinfo.length,
        layout: SwiperLayout.TINDER,
        itemWidth: 400,
        itemHeight: 340,
        itemBuilder: (contex, i) {
          Cards cards = Cards.cardinfo[i];
          return Stack(
            children: [
              Column(
                children: [
                  SizedBox(
                    height: ApplicationConstants.sizeHeight(context, 0.005),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: cards.color,
                          begin: Alignment.topLeft,
                          end: Alignment.bottomCenter,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            blurRadius: 7,
                            offset: const Offset(0, 3),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  cards.name,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  width: ApplicationConstants.sizeWidth(
                                      context, 0.5),
                                ),
                                Image.asset(
                                  cards.icon,
                                  width: ApplicationConstants.sizeWidth(
                                      context, 0.07),
                                  height: ApplicationConstants.sizeHeight(
                                      context, 0.07),
                                  color: Colors.white,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: ApplicationConstants.sizeHeight(
                                  context, 0.03),
                            ),
                            Container(
                              margin: const EdgeInsets.only(right: 100),
                              child: Row(
                                children: [
                                  const Text("••••",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(
                                      width: ApplicationConstants.sizeWidth(
                                          context, 0.04)),
                                  const Text("••••",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(
                                      width: ApplicationConstants.sizeWidth(
                                          context, 0.04)),
                                  const Text("••••",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(
                                      width: ApplicationConstants.sizeWidth(
                                          context, 0.04)),
                                  const Text("7450",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: ApplicationConstants.sizeHeight(
                                  context, 0.01),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      "assets/images/us-dollar.png",
                                      width: ApplicationConstants.sizeWidth(
                                          context, 0.06),
                                      height: ApplicationConstants.sizeHeight(
                                          context, 0.06),
                                      color: Colors.white,
                                    ),
                                    Text(
                                      cards.money,
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 26,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                Image.asset(
                                  cards.bank,
                                  width: ApplicationConstants.sizeWidth(
                                      context, 0.09),
                                  height: ApplicationConstants.sizeHeight(
                                      context, 0.09),
                                  color: Colors.white,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          );
        },
      ),
    );
  }
}
