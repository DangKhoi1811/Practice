import 'package:flutter/material.dart';
import 'detail_view.dart';

class MapView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: <Widget>[
          Positioned(
          top: 20.0,
            child:   _searchBar(),
      ),
          _upperButton(context),
          _bottomButton()
        ],
      ),
      bottomNavigationBar: _bottomBar(context) ,

    );
  }
}

_searchBar() {
  return Column(
    children: <Widget>[
         Padding(
          padding: const EdgeInsets.fromLTRB(12, 20, 0, 0),
          child: Card(
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            child: Container(
              height: 50,
              width: 330,
               child: Row(
                 children: <Widget>[
                   _menuButton(),
                   SizedBox(
                     width: 50,
                   ),
                   Expanded(
                     flex: 1,
                     child: _searchField() ,
                   ),
                   _voiceButton(),
                   VerticalDivider(
                     width: 1,
                     color:Colors.grey[600]
                   ),
                   _directionButton(),

                 ],
               ),
             ),
            ) ,
        ),
    ],
  );
}

_menuButton(){
  return IconButton(
    icon: Icon(
      Icons.menu,
      color: Colors.purple,
      size: 35,
    ),
    onPressed: null,
    splashColor: Colors.transparent,
  );
}

_searchField(){
  return Container(
    alignment: Alignment.centerLeft,
    child: TextField(
      autofocus: false,
      decoration: InputDecoration(
          icon:Icon(Icons.search,color: Colors.grey),
          border: InputBorder.none,
          hintText: 'Tìm kiếm'),
      onChanged: null,

    ),
  );
}

_voiceButton(){
  return IconButton(
    icon: Icon(
      Icons.keyboard_voice,
      color: Colors.purple,
      size: 35,
    ),
    onPressed: null,
    splashColor: Colors.transparent,
  );
}

_directionButton(){
  return IconButton(
    icon: Icon(
      Icons.directions,
      color: Colors.purple,
      size: 35,
    ),
    onPressed: null,
    splashColor: Colors.transparent,
  );
}

_upperButton(context){
  return Positioned(
    right: 10.0,
    top:100,
    child: FloatingActionButton(
      child: Icon(
          Icons.layers
      ),
      mini: true,
      backgroundColor: Colors.purple,
      onPressed: (){},
      heroTag: "layer_hero",
    ),
  );
}

_bottomButton(){
  return Positioned(
    right: 10.0,
    bottom: 10.0,
    child: FloatingActionButton(
      child: Icon(
          Icons.near_me
      ),
      mini: true,
      backgroundColor: Colors.purple,
      onPressed: (){},
      heroTag: "direction_hero",
    ),
  );
}

_bottomBar(context) {
  return Container(
    height: 50,
    child: BottomAppBar(
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=> new DetailView() ));
            },
            child: Image.asset(
              'imgs/btn1.PNG',
              width: 40,
              height: 40,
              fit: BoxFit.cover,
            ),
          ),
          InkWell(
            onTap: () {
            },
            child: Image.asset(
              'imgs/btn2.PNG',
              width: 40,
              height: 40,
              fit: BoxFit.cover,
            ),
          ),
          InkWell(
            onTap: () {
            },
            child: Image.asset(
              'imgs/btn3.PNG',
              width: 40,
              height: 40,
              fit: BoxFit.cover,
            ),
          ),
          InkWell(
            onTap: () {
            },
            child: Image.asset(
              'imgs/btn4.PNG',
              width: 40,
              height: 40,
              fit: BoxFit.cover,
            ),
          ),
          InkWell(
            onTap: () {
            },
            child: Image.asset(
              'imgs/btn5.PNG',
              width: 40,
              height: 40,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),

    ),
  );
}