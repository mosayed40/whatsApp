import 'package:flutter/material.dart';
import 'package:whatsapp/frisrApp.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Whatsapp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF075E54),
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Color(0xFF25D366)),
      ),
      home: ChatListScreen(),
    );
  }
}

class ChatListScreen extends StatelessWidget {
    //list of chats
  final List<Map<String, String>> chats = [
    {'name': 'Mostafa', 'message': ' مساء الخير ', 'time': '10:30'},
    {'name': 'islam', 'message': '  صباح الخير ,هل انت بخير', 'time': '9:15'},
    {'name': 'محمد', 'message': 'جاهز للخروجة؟', 'time': '8:00'},
    {'name': 'ahmed', 'message': 'إزيك يا صاحبي؟', 'time': '10:30'},
    {'name': 'ابراهيم', 'message': '  ', 'time': '9:15'},
    {'name': 'محسن', 'message': 'جاهز للخروجة؟', 'time': '8:00'},
    {'name': 'عبد الله', 'message': '  ', 'time': '10:30'},
    {'name': 'عمر', 'message': '  ', 'time': '9:15'},
    {'name': 'محمد', 'message': ' ', 'time': '8:00'},
    {'name': 'Mostafa', 'message': 'إزيك يا صاحبي؟', 'time': '10:30'},
    {'name': 'اسامه', 'message': 'فينك من زمان؟', 'time': '9:15'},
    {'name': 'عيد', 'message': 'جاهز للخروجة؟', 'time': '8:00'},

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('whatsapp'),
        backgroundColor: Color(0xFF075E54),
        actions: [
          Icon( Icons.search ),
          SizedBox(width: 16),
          Icon(Icons.more_vert),
         
        ],
      ),
      body: ListView.builder(
        itemCount: chats.length,
        itemBuilder: (context, i) {
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.grey[500],
              child: Text(chats[i]['name']![0]),
            ),
            title: Text(chats[i]['name']!),
            subtitle: Text(chats[i]['message']!),
            trailing: Text(chats[i]['time']!),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => ChatScreen(name: chats[i]['name']!),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

