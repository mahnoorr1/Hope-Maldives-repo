import 'package:flutter/material.dart';
import 'package:hop_maldives/models/message.dart';

class ChatProvider extends ChangeNotifier {
  List<Message> _msgs = [];

  List<Message> get msgs => _msgs;

  set setAllMessages(List<Message> msgs) {
    _msgs = msgs;

    notifyListeners();
  }

  set sendMsg(Message value) {
    _msgs.insert(0, value);

    notifyListeners();
  }
}
