import 'package:flutter/material.dart';
import 'package:flutter_chat_bubble/chat_bubble.dart';
import 'package:ishbor/utils/constans.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: myHeight(context) * 700 / 812,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20),
              child: ListView(
                children: <Widget>[
                  getTitleText(""),
                  getSenderView(
                      ChatBubbleClipper1(type: BubbleType.sendBubble), context),
                  getReceiverView(
                      ChatBubbleClipper1(type: BubbleType.receiverBubble),
                      context),
                  const SizedBox(
                    height: 10,
                  ),
                  getTitleText(""),
                  getSenderView(
                      ChatBubbleClipper2(type: BubbleType.sendBubble), context),
                  getReceiverView(
                      ChatBubbleClipper2(type: BubbleType.receiverBubble),
                      context),
                  const SizedBox(
                    height: 10,
                  ),
                  getTitleText(""),
                  getSenderView(
                      ChatBubbleClipper3(type: BubbleType.sendBubble), context),
                  getReceiverView(
                      ChatBubbleClipper3(type: BubbleType.receiverBubble),
                      context),
                  const SizedBox(
                    height: 10,
                  ),
                  getTitleText(""),
                  getSenderView(
                      ChatBubbleClipper4(type: BubbleType.sendBubble), context),
                  getReceiverView(
                      ChatBubbleClipper4(type: BubbleType.receiverBubble),
                      context),
                  const SizedBox(
                    height: 10,
                  ),
                  getTitleText(""),
                  getSenderView(
                      ChatBubbleClipper5(type: BubbleType.sendBubble), context),
                  getReceiverView(
                      ChatBubbleClipper5(type: BubbleType.receiverBubble),
                      context),
                  const SizedBox(
                    height: 10,
                  ),
                  getTitleText(""),
                  getSenderView(
                      ChatBubbleClipper6(type: BubbleType.sendBubble), context),
                  getReceiverView(
                      ChatBubbleClipper6(type: BubbleType.receiverBubble),
                      context),
                  const SizedBox(
                    height: 10,
                  ),
                  getTitleText(""),
                  getSenderView(
                      ChatBubbleClipper7(type: BubbleType.sendBubble), context),
                  getReceiverView(
                      ChatBubbleClipper7(type: BubbleType.receiverBubble),
                      context),
                  const SizedBox(
                    height: 10,
                  ),
                  getTitleText(""),
                  getSenderView(
                      ChatBubbleClipper8(type: BubbleType.sendBubble), context),
                  getReceiverView(
                      ChatBubbleClipper8(type: BubbleType.receiverBubble),
                      context),
                  const SizedBox(
                    height: 10,
                  ),
                  getTitleText(""),
                  getSenderView(
                      ChatBubbleClipper9(type: BubbleType.sendBubble), context),
                  getReceiverView(
                      ChatBubbleClipper9(type: BubbleType.receiverBubble),
                      context),
                  const SizedBox(
                    height: 10,
                  ),
                  getTitleText(""),
                  getSenderView(
                      ChatBubbleClipper10(type: BubbleType.sendBubble),
                      context),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: getReceiverView(
                        ChatBubbleClipper10(type: BubbleType.receiverBubble),
                        context),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.image),
                  hintText: 'write message',
                  suffixIcon: IconButton(
                    onPressed: () {
                      controller.clear();
                    },
                    icon: const Icon(
                      Icons.send,
                      color: Colors.blue,
                    ),
                  )),
            ),
          )
        ],
      ),
    );
  }

  getTitleText(String title) => Text(
        title,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 20,
        ),
      );

  getSenderView(CustomClipper clipper, BuildContext context) => ChatBubble(
        clipper: clipper,
        alignment: Alignment.topRight,
        margin: const EdgeInsets.only(top: 20),
        backGroundColor: Colors.blue,
        child: Container(
          constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width * 0.7,
          ),
          child: const Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
            style: TextStyle(color: Colors.white),
          ),
        ),
      );

  getReceiverView(CustomClipper clipper, BuildContext context) => ChatBubble(
        clipper: clipper,
        backGroundColor: const Color(0xffE7E7ED),
        margin: const EdgeInsets.only(top: 20),
        child: Container(
          constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width * 0.7,
          ),
          child: const Text(
            "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat",
            style: TextStyle(color: Colors.black),
          ),
        ),
      );
}
