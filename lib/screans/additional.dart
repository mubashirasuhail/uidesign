import 'package:flutter/material.dart';

class Additional extends StatefulWidget {
  const Additional({super.key});

  @override
  State<Additional> createState() => _AdditionalState();
}

class _AdditionalState extends State<Additional> {
   bool _switchValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Additional Information',textAlign: TextAlign.center,style: TextStyle(fontSize: 18,color: Colors.white)),
      centerTitle: true,
     ),
     body: SafeArea(
      child: Column(
          children: <Widget>[
            Expanded(
      child:ListView(
  children: <Widget>[
    ListTile(
      leading:  Icon(Icons.share),
      
      title: Text('Share Dukaan App'),
  
      trailing: Text('>'),
    ),
   ListTile(
      leading:  Icon(Icons.insert_comment_outlined),
      
      title: Text('Change Language'),
  
      trailing: Text('>'),
    ),
   ListTile(
      leading: Icon(Icons.comment_bank_outlined) ,/* Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage( 'assets/wtsap.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),*/
      
      title: Text('Whatsapp Chat Support'),
  
      trailing: Switch(
         activeColor: Colors.blue,
  activeTrackColor: Color.fromARGB(255, 187, 199, 242),
          value: _switchValue,
          onChanged: (newValue) {
            setState(() {
              _switchValue = newValue;
            });
              },
        ),/*Switch(
  // thumb color (round icon)
  activeColor: Colors.blue,
  activeTrackColor: Color.fromARGB(255, 187, 199, 242),
  inactiveThumbColor: Colors.blueGrey.shade600,
  inactiveTrackColor: Colors.grey.shade400,
  splashRadius: 50.0,
  // boolean variable value
  value:  forAndroid,
  // changes the state of the switch
  onChanged: (value) => setState(() => forAndroid = value),
),*/
    ),
     ListTile(
      leading:  Icon(Icons.card_travel),
      
      title: Text('Privacy Policy'),

    ),
     ListTile(
      leading:  Icon(Icons.star),
      
      title: Text('Rate Us'),

    ),
     ListTile(
      leading:  Icon(Icons.logout),
      
      title: Text('Sign Out'),

    ),
   
  ],
)),  Padding(
              padding: const EdgeInsets.all(16.0),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  ' Version: 1.0.0', // Replace with your version number
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
              ),
            ),],
              ),
              
            ),
    );
  }
}