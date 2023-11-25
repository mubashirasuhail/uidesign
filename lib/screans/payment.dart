import 'package:flutter/material.dart';


class Paymentpage extends StatefulWidget {
  const Paymentpage({super.key});

  @override
  State<Paymentpage> createState() => _PaymentpageState();
  
}

class _PaymentpageState extends State<Paymentpage> {
  
    List<ListIte> item = [
    ListIte('Order#1243543', 'assets/man.jpg','jul 12','399 deposited to 87897987','899',),
    ListIte('Order#32253', 'assets/mug.jpg','aprl 5','89 deposited to 787897','878'),
    ListIte('Order#34547', 'assets/tsrt1.jpg','may 6','66 deposited to 678689','789'),
    ListIte('Order#67658', 'assets/tsrt2.jpg','june 7','556 deposited to 798798','898'),
     

  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Payments',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(
              Icons.info, // Replace with the desired icon
              color: Colors.white,
            ),
            onPressed: () {
              // Define the action when the icon is pressed
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SafeArea(
          child: Column(
            children: [
              Card(
                elevation: 4,
                margin: EdgeInsets.all(8),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Transaction Limit',
                        style:
                            TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'A free limit up to which you will receive the online payments directly in your bank',
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                      SizedBox(height: 16),
                      LinearProgressIndicator(
                        value: 0.3, // Set the progress value between 0 and 1
                        backgroundColor: Colors.grey,
                        color: Colors.blue,
                      ),
                      Text(
                        '36,668 left out of 50,000',
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                      SizedBox(height: 16),
                      ElevatedButton(
                        onPressed:(){},
                        child: Text('Increase Limit'),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Default Method', style: TextStyle(fontSize: 16)),
                      Text('Payment Profile', style: TextStyle(fontSize: 16)),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text('Online Payments >', style: TextStyle(fontSize: 16,color: Colors.grey)),
                      Text('Bank Account >', style: TextStyle(fontSize: 16,color: Colors.grey)),
                    ],
                  ),
                ],
              ),
              Divider(
                // Add a divider here
                color: Colors.grey,
                thickness: 1,
                indent: 16,
                endIndent: 16,
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Payments Overview', style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)),
                    ],
                  ),
                 Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text('Life Time >', style: TextStyle(fontSize: 16,color: Colors.grey)),
                      ],
                 
                  )
                ],
              ),
              SizedBox(height: 10,),
              Row(
      
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width:150,height: 80,
                    child: Container(
                      decoration: BoxDecoration(
      color: Colors.orange,
      borderRadius: BorderRadius.circular(10), // Set your desired border radius
    ),
                       
                      child: Column(
                       crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.center, 
                        children: [
                          Text('AMOUNT ON HOLD', style: TextStyle(fontSize: 16)),
                          SizedBox(height: 10,),
                          Text('0', style: TextStyle(fontSize: 20)),
                        ],
                      ),
                    ),
                    
                  ),
                  SizedBox(
                      width: 150,height: 80,
                    child: Container(
                         decoration: BoxDecoration(
      color: Colors.green,
      borderRadius: BorderRadius.circular(10), // Set your desired border radius
    ),
                      child: Column(
                       crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.center, 
                        children: [
                          Text('AMOUNT RECEIVED', style: TextStyle(fontSize: 16)),
                             SizedBox(height: 10,),
                          Text('13,332', style: TextStyle(fontSize: 20)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                   height: 16,
                  ),
             Align(
      alignment: Alignment.centerLeft,
     
        child: Text(
          'Transactions',
          style: TextStyle(fontSize: 16),
        ),
     
    ),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: null,
                    child: Text('On hold'),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  ElevatedButton(
                    onPressed: (){},
                    child: Text('Payouts(15)'),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  ElevatedButton(
                    onPressed: null,
                    child: Text('Refunds'),
                  ),
                ],
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 4, // Replace with the actual item count
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: ListTile(
                        // Customize the ListTile as needed
                       
                                   
                              
                          
                                       title:   Text(item[index].name1,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,) ),
                            
                                // Add more Text widgets or other content as needed
                           
                           
                           subtitle: Text(item[index].name21,style: TextStyle(fontSize: 12,color: Colors.grey) ), 
                           leading: Column(
                             children: [
                               Container(
                                      width: 60,
                                      height: 60,
                                      decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage( item[index].imageUrl1 ),
                        fit: BoxFit.cover,
                      ),
                                      ),
                                      
                                    ),
                                    SizedBox(height: 2,),
                                    Text(item[index].name4,style: TextStyle(fontSize: 12,color: Colors.grey)),
                             ],
                           ),
                                   
                                 trailing: Column(
  children: [
    Text(item[index].name4, style: TextStyle(fontSize: 12, color: Colors.grey)),
    Row(
      children: [
        Container(
          width: 8, // Set the width of the green dot
          height: 8, // Set the height of the green dot
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.green, // Set the color of the green dot
          ),
        ),
        SizedBox(width: 4), // Add some spacing between the dot and text
        Text('Successful', style: TextStyle(fontSize: 12, color: Colors.grey)),
      ],
    ),
  ],
),
                                      /* trailing: Column(
                             
                             
                              children: [
                                 Text(item[index].name1,style: TextStyle(fontSize: 12,color: Colors.grey) ),
                          
                                Row(
                                  children: [
                                    CircleAvatar(),
                                    Text(item[index].name1,style: TextStyle(fontSize: 12,color: Colors.grey) ),
                                  ],
                                ),
                                // Add more Text widgets as needed
                              ],
                            ),*/
                            
                      ),
                    );
                    
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class ListIte {
  final String name1;
  final String imageUrl1;
   final String name21;
      final String name3;
         final String name4;


  ListIte(this.name1, this.imageUrl1,this.name21,this.name3,this.name4);
}