import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:intl/intl.dart';
import 'package:point_app/models/message.dart';
import 'package:point_app/theme.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<Message> messages = [
    Message(
      text: 'Yes sure!',
      date: DateTime.now().subtract(
        Duration(minutes: 1),
      ),
      isSendByMe: false,
    ),
    Message(
      text: 'Yes!',
      date: DateTime.now().subtract(
        Duration(minutes: 1),
      ),
      isSendByMe: true,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            child: GroupedListView<Message, DateTime>(
              padding: EdgeInsets.all(8),
              reverse: true,
              order: GroupedListOrder.DESC,
              floatingHeader: true,
              elements: messages,
              groupBy: (message) => DateTime(
                message.date.year,
                message.date.month,
                message.date.day,
              ),
              groupHeaderBuilder: (Message message) => SizedBox(
                height: 40,
                child: Center(
                  child: Card(
                    color: Theme.of(context).primaryColor,
                    child: Padding(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        DateFormat.yMMMd().format(message.date),
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
              itemBuilder: (context, Message message) => Align(
                alignment: message.isSendByMe
                    ? Alignment.centerRight
                    : Alignment.centerLeft,
                child: Card(
                  elevation: 8,
                  child: Padding(
                    padding: EdgeInsets.all(12),
                    child: Text(message.text),
                  ),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 20, right: 20, left: 20),
            child: Row(
              children: [
                Icon(
                  Icons.attach_file,
                ),
                Expanded(
                  child: TextField(
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      contentPadding: const EdgeInsets.all(12),
                      hintText: 'Type your message...',
                    ),
                  ),
                ),
                Icon(
                  Icons.emoji_emotions_outlined,
                  size: 30,
                ),
                SizedBox(width: 10),
                Container(
                  //  onSubmitted: (text) {
                  //     final message = Message(
                  //       text: text,
                  //       date: DateTime.now(),
                  //       isSendByMe: true,
                  //     );
                  //     setState(() => messages.add(message));
                  //   },
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: green,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.send,
                    color: white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
