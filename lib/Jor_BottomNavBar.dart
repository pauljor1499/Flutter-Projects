
import 'package:flutter/material.dart';

void main() {
  runApp(BottomNavBar());
}

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _current = 0;


  //tab
  final _cont = [

    MyProfile(),

    MyListView(),

    Center(
      // child: Text('Search'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // appBar: AppBar(
        //   title: Text('Bottom Nav Barss'),
        //   backgroundColor: Colors.purple,
        // ),

        body: _cont[_current],
        
        //Bottom Navigation bar
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _current,
          selectedFontSize: 20,
          iconSize: 20,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: ('Home'),
                backgroundColor: Colors.amberAccent),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: ('Profile'),
                backgroundColor: Colors.amberAccent),
            BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: ('Find'),
                backgroundColor: Colors.amberAccent),
          ],

          //Click Icon
          onTap: (index) {
            setState(() {
              _current = index;
            });
          },
        ),
      ),
    );
  }
}

//My ListView Content
class MyListView extends StatelessWidget {
   @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('List of Contacts'),
          backgroundColor: Colors.blueAccent,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            // onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => BottomNavBar()),),
            onPressed:() => context,
          ), 
        ),
        body: Container(
          child: myListView(),
          margin: EdgeInsets.only(top: 20),
        ),
      ),
    );
  }
}


myListView() {
  var listview = ListView(
    children: const [
      ListTile(
        leading: Image(image: NetworkImage('https://www.biography.com/.image/ar_1:1%2Cc_fill%2Ccs_srgb%2Cfl_progressive%2Cq_auto:good%2Cw_1200/MTY2NzA3ODE3OTgwMzcyMjYw/jeff-bezos-andrew-harrer_bloomberg-via-getty-images.jpg'),),
        title: Text('Jeff Bezos'),
        subtitle: Text('Technology'),
        trailing: Icon(Icons.navigate_next),
      ),

      Divider(thickness: 1.0),

      ListTile(
        leading: Image(image: NetworkImage('https://www.biography.com/.image/ar_1:1%2Cc_fill%2Ccs_srgb%2Cfl_progressive%2Cq_auto:good%2Cw_1200/MTc5OTk2ODUyMTMxNzM0ODcy/gettyimages-1229892983-square.jpg')),
        title: Text('Elon Musk'),
        subtitle: Text('Automotive'),
        trailing: Icon(Icons.navigate_next),
      ),

      Divider(thickness: 1.0),

      ListTile(
        leading: Image(image: NetworkImage('https://www.biography.com/.image/ar_1:1%2Cc_fill%2Ccs_srgb%2Cg_face%2Cq_auto:good%2Cw_300/MTgwMTc5MTIxNDE2OTcxNjA4/gettyimages-1165301142.jpg')),
        title: Text('Bill Gates'),
        subtitle: Text('Technology'),
        trailing: Icon(Icons.navigate_next),
      ),

      Divider(thickness: 1.0),

      ListTile(
        leading: Image(image: NetworkImage('https://www.biography.com/.image/ar_1:1%2Cc_fill%2Ccs_srgb%2Cfl_progressive%2Cq_auto:good%2Cw_1200/MTQyMDA0NDgwMzUzNzcyNjA2/mark-zuckerberg_gettyimages-512304736jpg.jpg')),
        title: Text('Mark Zuckerbergs'),
        subtitle: Text('Technology'),
        trailing: Icon(Icons.navigate_next),
      ),

      Divider(thickness: 1.0),

      ListTile(
        leading: Image(image: NetworkImage('https://thumbor.forbes.com/thumbor/fit-in/416x416/filters%3Aformat%28jpg%29/https%3A%2F%2Fspecials-images.forbesimg.com%2Fimageserve%2F5babb7f1a7ea4342a948b79a%2F0x0.jpg%3Fbackground%3D000000%26cropX1%3D748%26cropX2%3D3075%26cropY1%3D1753%26cropY2%3D4082')),
        title: Text('Warren Buffett'),
        subtitle: Text('Finance & Investments'),
        trailing: Icon(Icons.navigate_next),
      ),

    ],
  );
  return listview;
}


//My Profile Content
class MyProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("My Profile"),
          backgroundColor: Colors.purple,

          //arrow back
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            // onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => BottomNavBar()),),
            onPressed:() => context,
          ), 
        ),

        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          padding: const EdgeInsets.only(top: 30.0),
            child: Column(
              children: <Widget>[

                CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage('https://lh3.googleusercontent.com/pw/AM-JKLVrlXe9XyENWcwlAYbeJObUjlSo2UTTxeLZvioqMhXBiv5Q-YSqKHdmTWrXE3FfTgdckS_PXbBXhgAZtIVmUNPuSefhy9rfqNsbUXooCsNP55HoJ80b_C2eeJBan8ITgIJQw9ah3jxTs5yscL_hhvvI=w691-h695-no'),
                ),

                SizedBox(
                  
                  height: 20.0,
                  width: 200,
                ),

                Text(
                  'Paul Vincent L. Jor',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),

                Text(
                  'Mobile Developer',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),

                SizedBox(
                  height: 50.0,
                  width: 200,
                  child: Divider(
                    color: Colors.grey,
                  ),
                ),

                Card(
                  color: Colors.white,
                  margin:
                    EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.teal[900],
                    ),
                    title: Text(
                      '+639197865866',
                    ),
                  )
                ),

                Card(
                  color: Colors.white,
                  margin:
                      EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.teal[900],
                    ),
                    title: Text(
                      'jorpaulvincent@gmail.com',
                    ),
                  ),
                ),

                //Get Card
                buildCard(),
                
              ],
            )
        ),
      ),
    );
  }
}

  Card buildCard() {
    var heading = 'Lipstick AR';
    var subheading = 'Mobile Dev Project';
    var cardImage = NetworkImage(
        'https://www.adweek.com/wp-content/uploads/2020/01/PinterestTryOn-652x326.jpg');
    var supportingText =
        'Virtual Makeup SDK is a software development kit that includes code samples and tools for beauty AR technology. ';
    return Card(
      margin: EdgeInsets.only(bottom: 40,left: 30,top: 10,right: 30),
      elevation: 4.0,
      child: Column(
          children: [
            ListTile(
              title: Text(heading),
              subtitle: Text(subheading),
              trailing: Icon(Icons.phone_android),
            ),
            Container(
              height: 100.0,
              child: Ink.image(
                image: cardImage,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              alignment: Alignment.centerLeft,
              child: Text(supportingText),
            ),

            ButtonBar(
              children: [
                TextButton(
                  child: const Text('TRY'),
                  onPressed: () {/* ... */},
                ),
                TextButton(
                  child: const Text('VIEW'),
                  onPressed: () {/* ... */},
                )
              ],
            )
          ],
        )
      );
  }


// ignore_for_file: prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, sized_box_for_whitespace, prefer_const_constructors, file_names
