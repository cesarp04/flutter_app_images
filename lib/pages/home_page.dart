import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build( BuildContext context){
    String descriptionDummy = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.";

    final card = Container(
      margin: EdgeInsets.only(
          top: 10.0,
          bottom: 10.0
      ),
      child: Column(
        children: [
          Text("Navegacion",
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
          Container(
            margin: EdgeInsets.only(
                top: 10.0,
                bottom: 10.0
            ),
            child: Image.network("https://cdn.pixabay.com/photo/2013/02/01/18/14/url-77169_960_720.jpg"),
          ),
          Text(
            descriptionDummy,
            style: TextStyle(
                fontSize: 14.0
            ),
          )
        ],
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("Mi pagina de Cards"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
            card,
            card
          ],
      ),
      endDrawer: Drawer(
        child: Text("endDrawerContent"),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.chat),label: "Chat")
        ],
      ),
    );
  }
}