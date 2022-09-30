import 'package:flutter/material.dart';
import 'package:google_ignite_app/pages/chat_page.dart';
import 'package:google_ignite_app/widget/widgets.dart';

class ChatCard extends StatelessWidget {
  const ChatCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 200.0,
        child: Card(
            elevation: 2,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                side: const BorderSide(color: Colors.grey, width: .3)),
            child: (InkWell(
                splashColor: Colors.blue.withAlpha(30),
                onTap: () {
                  debugPrint('Conversations Tapped');
                  nextScreen(context, const ChatPage());
                },
                child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/carousell.png",
                          width: 50,
                        ),
                        const SizedBox(
                          height: 13,
                        ),
                        const Text("Conversations")
                      ],
                    ))))));
  }

  // Widget build(BuildContext context) {
  //   return Card(
  //       elevation: 2,
  //       shape: RoundedRectangleBorder(
  //           borderRadius: BorderRadius.circular(20),
  //           side: const BorderSide(color: Colors.grey, width: .3)),
  //       child: (InkWell(
  //           splashColor: Colors.blue.withAlpha(30),
  //           onTap: () {
  //             debugPrint('Delivery Tapped');
  //             nextScreen(context, const ChatPage());
  //           },
  //           child: Padding(
  //               padding: const EdgeInsets.all(20.0),
  //               child: Column(
  //                 children: [
  //                   Image.asset("assets/images/carousell.png", width: 35),
  //                   const SizedBox(
  //                     height: 13,
  //                   ),
  //                   const Text("Conversations")
  //                 ],
  //               )))));
  // }
}
