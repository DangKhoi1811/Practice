import 'package:flutter/material.dart';
import 'rating_bar.dart';
class MapView extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: <Widget>[
        _createUpperTitle(context),
            _createUpperImage(context),
            SizedBox(
                height: 5
            ),
            Padding(
              padding: const EdgeInsets.only(left:8.0),
              child: UpperRating(distance: '410m'),
            ),
        Divider(
          color: Colors.grey[500],
          height: 5,
        ),
        _overviewDetail(context),
        SizedBox(
          height: 10,
        ),
        _belowDetail(context),
      ],
    );
  }
}
class UpperRating extends StatelessWidget{
  final String distance;
  const UpperRating({
    this.distance});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[100],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Icon(Icons.location_on,color: Colors.purple,size: 16),
              SizedBox(
                width: 5,
              ),
              Text(distance ,style: TextStyle(
                  fontSize: 13
              ),),
            ],
          ),
          SizedBox(height: 2),
          Row(
            children: <Widget>[
              FormField<int>(
                initialValue: 3,
                autovalidate: true,
                builder: (state){
                  return StarRating(
                      onChanged: state.didChange,
                      value : state.value
                  );
                },
              ),
              SizedBox(
                width: 10,
              ),
              Text('Đánh giá')
            ],
          ),
        ],
      ),

    );
  }

}
class BelowDetail extends StatelessWidget{
  final String title;
  final String  description;
  final String distance;
  const BelowDetail({this.title,this.description,this.distance});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(title,style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 16
        ),
        ),
        Text(description,style: TextStyle(
            fontSize: 14
        ),
        ),
        UpperRating(
          distance: distance,
        ),
      ],
    );
  }
}
_createUpperTitle(context){
  return Container(
    height: 40,
    width:  MediaQuery.of(context).size.width,
    child: Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Row(
        children: <Widget>[
          Text('DANH LAM THẮNG CẢNH HUẾ',style:
            TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: Colors.white
            ),),
          SizedBox(width: 5,),
          Icon(Icons.keyboard_arrow_down,
            size: 28,
            color: Colors.white,)
        ],
      ),
    ),
    color: Colors.purple,
  );
}
_createUpperImage(context) {
  return Container(
    height: MediaQuery.of(context).size.height/3-17,
    width:  MediaQuery.of(context).size.width ,
    child: Image(
        image: AssetImage('imgs/danhlam.jpg'),
    ),
  );
}
_overviewDetail(context){
  return Container(
    decoration: BoxDecoration(
        color: Colors.grey[100]
    ),
    child: Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Tham quan Hoàng thành Huế',
              style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 16
                  ),
                ),
              SizedBox(
                height: 2,
              ),
              Text('Hoàng thành Huế là vòng thành thứ 2 bên trong Kinh thành Huế, '
                  'có chức năng bảo vệ các cung điện quan trọng nhất của '
                  'triều đình Huế, các miếu thờ tổ tiên nhà Nguyễn và bảo vệ, '
                  'Tử Cấm thành Huế. Lịch sử Hoàng thành Huế '
                  'được xây dựng từ năm...',
              style: TextStyle(
                fontSize: 12,
                wordSpacing: 1
              ),)
            ],
      ),
    ),
  );
}
_belowDetail(context){
  return Container(
    decoration: BoxDecoration(
        color: Colors.grey[100]
    ),
    child: Padding(
      padding: const EdgeInsets.only(left:8.0),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Image(
                image: AssetImage('imgs/damchuon.jpg'),
                height: MediaQuery.of(context).size.height/7,
                width: 120,
              ),
              SizedBox(
                width: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: BelowDetail(
                  title: 'Đầm Chuồn xứ Huế',
                  description: 'Hương Quán - Phú An - Phú Vang',
                  distance: '20km',
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Image(
                image: AssetImage('imgs/buonlang.jpg'),
                height: MediaQuery.of(context).size.height/7,
                width: 120,
              ),
              SizedBox(
                width: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: BelowDetail(
                  title: 'Buôn làng người Pako - Huế',
                  description: 'Hồng Vân - A lưới - TT Huế',
                  distance: '40km',
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Image(
                image: AssetImage('imgs/thapco.jpg'),
                height: MediaQuery.of(context).size.height/7,
                width: 120,
              ),
              SizedBox(
                width: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: BelowDetail(
                  title: 'Tháp cổ Phú Diên - Huế',
                  description: 'Phú Diên - Phú An - TT Huế',
                  distance: '30km',
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}