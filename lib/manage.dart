

import 'package:flutter/material.dart';
import 'package:uidesign2/dukaan.dart';
import 'package:uidesign2/screans/additional.dart';
import 'package:uidesign2/screans/payment.dart';



class Managestore extends StatefulWidget {
   const Managestore({super.key});

  @override
  State<Managestore> createState() => _Managestorestate();
}
class _Managestorestate extends State<Managestore> {
 
    List<ListItem> items = [
    ListItem('''Marketing 
Designs''', 'assets/volume.jpg',''),
    ListItem('''Online
Payments''', 'assets/rupee.jpg',''),
    ListItem('''Discount
Coupons''', 'assets/percentage.jpg',''),
    ListItem('''My
Customers''', 'assets/customer.jpg',''),
      ListItem('''Store
QR Code''', 'assets/qr.jpg',''),
    ListItem('''Extra
Changes''', 'assets/rupee2.jpg',''),
    ListItem('''Order
Form''', 'assets/form.jpg','NEW'),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Managestore',textAlign: TextAlign.center,style: TextStyle(fontSize: 18,color: Colors.white)),
      centerTitle: true,
     ),
    
      body: SafeArea(child:
      GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
           
          ),
           
          itemCount: items.length,
         
          itemBuilder: (context, index) {
         
            return GestureDetector(
             onTap: () {
          // Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>Sztudentscreen(name: dat.name,age: dat.age,id: dat.id,div: dat.div,rollno: dat.rollno,)));
     if (index == 0) {
          Navigator.of(context).push(MaterialPageRoute(builder: (ctx1) => Additional()));
        } else if (index == 1) {
           Navigator.of(context).push(MaterialPageRoute(builder: (ctx1) => Paymentpage()));
          // Navigate to another page here
        }   else if (index == 2) {
          Navigator.of(context).push(MaterialPageRoute(builder: (ctx1) => YourPage()));
        }
          },

  child: Card(
    child: Padding(
      padding: EdgeInsets.all(11.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
   
        children: <Widget>[
         Row(
  children: [
    ClipRRect(
      borderRadius: BorderRadius.circular(10), // Round the image
      child: Image.asset(
        items[index].imageUrl,
        width: 50,
        height: 50,
        fit: BoxFit.cover,
      ),
    ),
    SizedBox(
      width: 50, // Adjust spacing as needed
    ),
    Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2), // Round the text container
        color: Colors.green,
      ),
     
        child: Align(
          alignment: Alignment.topRight,
          child: Text(
            items[index].name2,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
  ],
),
      SizedBox(height: 10,),
          Text(items[index].name,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold), ),
        ],
      ),
    ),
    elevation: 4,
    margin: EdgeInsets.all(8),
  ),
);})
   ));
  }

 

 
}class ListItem {
  final String name;
  final String imageUrl;
   final String name2;


  ListItem(this.name, this.imageUrl,this.name2);
}