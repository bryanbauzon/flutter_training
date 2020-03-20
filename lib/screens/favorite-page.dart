import 'package:flutter/material.dart';


class FavoriteWidget extends StatefulWidget{
  @override
    _FavoriteWidgetState createState() => _FavoriteWidgetState();
}


class _FavoriteWidgetState extends State<FavoriteWidget>{
 

  Widget _titleSection = Container(
    padding: const EdgeInsets.all(32),
    child: Row(
      children: <Widget>[
        Expanded(
          /*1*/
          child:Column(
            crossAxisAlignment:CrossAxisAlignment.start,
            children: <Widget>[
              /*2*/
              Container(
                padding: const EdgeInsets.only(bottom:8),
                child:Text(
                  'Oeschinen Lake Campground',
                  style: TextStyle(
                    fontWeight: FontWeight.bold
                  )
                )
              ),
              Text(
                'Kandersteg, Switzerland',
                style: TextStyle(
                  color:Colors.grey[500],
                ),                
              )
            ],
          ),
          ),
           SubFavoriteWidget()
      ],
    ),
  );
 Column _buildButtonColumn(Color color, IconData icon, String label){
      return Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(icon,color:color),
          Container(
            margin:const EdgeInsets.only(top:8),
            child:Text(
                label,
                style: TextStyle(
                  fontSize:12,
                  fontWeight:FontWeight.w400,
                  color:color
                ),
            )
          )
        ],
      );
  }

  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;

      Widget _buttonSection = Container(
          child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                _buildButtonColumn(color,Icons.call,'Call'),
                _buildButtonColumn(color,Icons.near_me,'Route'),
                _buildButtonColumn(color,Icons.share,'Share'),  
              ],
          )
        );

      Widget _textSection = Container(
        padding: const EdgeInsets.all(32),
        child: Text('Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
            'Alps. Situated 1,578 meters above sea level, it is one of the '
            'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
            'half-hour walk through pastures and pine forest, leads you to the '
            'lake, which warms to 20 degrees Celsius in the summer. Activities '
            'enjoyed here include rowing, and riding the summer toboggan run.',
            softWrap: true,// text lines will fill the column width before wrapping at a word boundary.
            ),
      );

      return Scaffold(
        body:ListView(
            children: <Widget>[
              Image.asset(
                'images/lake.jpg',
                width: 600,
                height: 240,
                fit: BoxFit.cover,
              ),
              _titleSection,
              _buttonSection,
              _textSection,
            ],
          )
      );
  }
}


class SubFavoriteWidget extends StatefulWidget{
  @override
  _SubFavoriteWidgetState createState() =>_SubFavoriteWidgetState();
}
class _SubFavoriteWidgetState extends State<SubFavoriteWidget>{
  
  bool _isFavorited = false;
  int _favoriteCount = 41;
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      
        mainAxisSize:MainAxisSize.min,
      children: <Widget>[
        Container(
                padding: EdgeInsets.all(0),
                child: IconButton(
                  icon:_isFavorited?  Icon(Icons.favorite):Icon(Icons.favorite_border),
                  color: Colors.red[500],  
                  onPressed: _toggleFavorite,
                ),
            ),
            SizedBox(
              width: 18,
              child: Container(
                child:Text('$_favoriteCount'),
              ),

            )
      ],
    );
  }

void _toggleFavorite(){
  setState((){
      if(_isFavorited){
          _favoriteCount -= 1;
          _isFavorited = false;
      }else{
          _favoriteCount += 1;
          _isFavorited = true;
      }
  });
  }

}






