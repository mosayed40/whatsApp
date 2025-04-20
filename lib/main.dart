import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});



  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
Map <String, String> contacts = {
    'John Doe': 'Hey! How are you?',
    'Jane Smith': 'See you later!',
    'Alice Johnson': 'Let\'s catch up!',
    'Bob Brown': 'Good morning!',
    'Charlie Davis': 'What\'s up?',
   
  };

 void onMenuSelected(String value) {
    // التعامل مع اختيار المستخدم
    
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Whatsapp ',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
 
          title: const Text('Whatsapp'),
          backgroundColor: Colors.green[300],
           actions: [
          PopupMenuButton<String>(
            onSelected: onMenuSelected,
            itemBuilder: (BuildContext context) => [
              PopupMenuItem(
                
                value: 'profile',
                child: Text('الملف الشخصي'),
               
              ),
             
              PopupMenuItem(
                value: 'settings',
                child: Text('الإعدادات'),
              ),
              PopupMenuItem(
                value: 'logout',
                child: Text('تسجيل الخروج'),
              ),
            ],
          ),
        ],
         /*  actions: [
           IconButton(
              icon: const Icon(Icons.camera_alt_outlined),
              onPressed: () {
                // Action for camera button
              },
            ),
            IconButton(
              icon: const Icon(Icons.more_vert),
              onPressed: () {
                // Action for more options button
              },
            ),       
          
          
          ], */ 
       
           
       
        
        ),
       body: Container(
        color: Colors.black,
         child: ListView(
          
            children: [
         ListTile(
           leading: Icon(Icons.archive, color: Colors.blueGrey,),
         title: Text('Archived', style: TextStyle(color: Colors.grey),),
         
         
          ),
         
              ListTile(
                leading: 
                 CircleAvatar( 
                  backgroundImage:
                   NetworkImage('https://play.google.com/store/apps/details?id=com.google.android.apps.photos'),
                 backgroundColor: Colors.grey,
                
                ),
                title: Text('John Doe', style: TextStyle(color: Colors.white),),
                subtitle: Text('Hey! How are you?'),
                trailing: Text('12:30 PM'),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage('https://example.com/profile.jpg'),
                  backgroundColor: Colors.grey,
                ),
                title: Text('John Doe', style: TextStyle(color: Colors.white),),
                subtitle: Text('See you later!'),
                trailing: Text('11:45 AM'),
                onTap: () {
                  
                },

                focusColor: Colors.green,
              ),
               ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage('https://example.com/profile.jpg'),
                   backgroundColor: Colors.grey,
                ),
                title: Text('John Doe', style: TextStyle(color: Colors.white),),
                subtitle: Text('See you later!'),
                trailing: Text('11:45 AM'),
              ),
               ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage('https://example.com/profile.jpg'),
                   backgroundColor: Colors.grey,
                ),
                 title: Text('John Doe', style: TextStyle(color: Colors.white),),
                subtitle: Text('See you later!'),
                trailing: Text('11:45 AM'),
              ),
               ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage('https://example.com/profile.jpg'),
                ),
                title: Text('John Doe', style: TextStyle(color: Colors.white),),
                subtitle: Text('See you later!'),
                trailing: Text('11:45 AM'),
              ),
               ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage('https://example.com/profile.jpg'),
                ),
                title: Text('John Doe', style: TextStyle(color: Colors.white),),
                subtitle: Text('See you later!'),
                trailing: Text('11:45 AM'),
              ),
               ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage('https://example.com/profile.jpg'),
                ),
                 title: Text('John Doe', style: TextStyle(color: Colors.white),),
                subtitle: Text('See you later!'),
                trailing: Text('11:45 AM'),
              ),
               ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage('https://example.com/profile.jpg'),
                ),
                 title: Text('John Doe', style: TextStyle(color: Colors.white),),
                subtitle: Text('See you later!'),
                trailing: Text('11:45 AM'),
              ),
               ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage('https://example.com/profile.jpg'),
                ),
                 title: Text('John Doe', style: TextStyle(color: Colors.white),),
                subtitle: Text('See you later!'),
                trailing: Text('11:45 AM'),
              ),
               ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage('https://example.com/profile.jpg'),
                ),
                title: Text('John Doe', style: TextStyle(color: Colors.white),),
                subtitle: Text('See you later!'),
                trailing: Text('11:45 AM'),
              ),
               ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage('https://example.com/profile.jpg'),
                ),
                 title: Text('John Doe', style: TextStyle(color: Colors.white),),
                subtitle: Text('See you later!'),
                trailing: Text('11:45 AM'),
              ),
               ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage('https://example.com/profile.jpg'),
                ),
                 title: Text('John Doe', style: TextStyle(color: Colors.white),),
                subtitle: Text('See you later!'),
                trailing: Text('11:45 AM'),
              ),
              // Add more ListTiles for other contacts
            ],
          ),
       ),


         
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
backgroundColor: Colors.green,
          child: const Icon(Icons.add),
        ),
        ),
            
        );
      
  }
}