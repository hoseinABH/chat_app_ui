import 'package:chat_app_ui/constants.dart';
import 'package:chat_app_ui/screens/chats/components/body.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  int selectedTabIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: cPrimaryColor,
        child: const Icon(
          Icons.person_add_alt_1,
          color: Colors.white,
        ),
      ),
      bottomNavigationBar: buildBottomNavigationBar(),
    );
  }

  BottomNavigationBar buildBottomNavigationBar() {
    return BottomNavigationBar(
      currentIndex: selectedTabIndex,
      type: BottomNavigationBarType.fixed,
      onTap: (value) => setState(() {
        selectedTabIndex = value;
      }),
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.messenger),
          label: "Chats",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.people),
          label: "People",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.call),
          label: "Calls",
        ),
        BottomNavigationBarItem(
          icon: CircleAvatar(
            radius: 14,
            backgroundImage: AssetImage('assets/images/user_2.png'),
          ),
          label: "Profile",
        ),
      ],
    );
  }
}

AppBar buildAppBar() {
  return AppBar(
    title: const Text(
      "Chats",
      style: TextStyle(fontWeight: FontWeight.bold),
    ),
    automaticallyImplyLeading: false,
    backgroundColor: cPrimaryColor,
    actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search))],
  );
}
