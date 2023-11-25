import 'package:flutter/material.dart';

class YourPage extends StatefulWidget {
  const YourPage({super.key});

  @override
  State<YourPage> createState() => _YourPageState();
}

class _YourPageState extends State<YourPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar:PreferredSize(
          preferredSize: Size.fromHeight(80), // Adjust the height as needed
          child: AppBar(title: Text('Dukaan Premium',textAlign: TextAlign.center,style: TextStyle(fontSize: 18,color: Colors.white)),
      centerTitle: true,
          ),
     ),
       body: 
    Column(
      children: [
        Card(
          elevation: 4,
                margin: EdgeInsets.all(8),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Row(
                      children: [
                        Icon(
              Icons.luggage, // Replace with the desired icon
              color: Colors.blue,
            ),
              Text(
                        'dukaan',
                        style:
                            TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      ],
                    ),
                    
                      SizedBox(height: 16),
                     Text(
  '''Get Dukaan Premium for just 
  4,999/year''',
  style: TextStyle(fontSize: 16),
  textAlign: TextAlign.center,
),

                      SizedBox(height: 10),
  Text(
  '''All the advanced features for scaling your 
  buisiness''',
  style: TextStyle(fontSize: 16,color: Colors.grey),
  textAlign: TextAlign.center,
),
                     
                    ],
                  ),
                ),
              ),
               SizedBox(height: 10),

Text('Features'),

SizedBox(height: 10),

   Row(
     children: [
     Image.asset('assets/globe.png'), 
       Column(
         children: [
           Text('Custom domain name'),
           Text('Get your own custom domain and build your brand on the internet.')
         ],
       ),
     ],
   ),
   SizedBox(height: 10),

   Row(
     children: [
     Image.asset('assets/tick.png'), 
       Column(
         children: [
           Text('Custom domain name'),
           Text('Get your own custom domain and build your brand on the internet.')
         ],
       ),
     ],
   ),
   SizedBox(height: 10),

   Row(
     children: [
     Image.asset('assets/pc.jpg'), 
       Column(
         children: [
           Text('Custom domain name'),
           Text('Get your own custom domain and build your brand on the internet.')
         ],
       ),
     ],
   ),
   SizedBox(height: 10),

   Row(
     children: [
     Image.asset('assets/support.png'), 
       Column(
         children: [
           Text('Custom domain name'),
           Text('Get your own custom domain and build your brand on the internet.')
         ],
       ),
     ],
   ),
   Divider(
                // Add a divider here
                color: Colors.grey,
                thickness: 2,
                indent:20 ,
                endIndent: 20,
              ),
              Text('What is Dukaan Premium?'),
              
      ],
    )
      
    );
  
  }
}