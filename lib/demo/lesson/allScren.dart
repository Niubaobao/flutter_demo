import 'package:flutter/cupertino.dart';

class AllScren extends StatefulWidget {
  @override
  _AllScrenState createState() => _AllScrenState();
}

class _AllScrenState extends State<AllScren> {
  @override
  Widget build(BuildContext context) {
    // return SafeArea(
    //   child: Column(
    //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //     children: <Widget>[
    //       Text('顶部'),
    //       Text('底部'),
    //     ],
    //   ),
    // );
    final EdgeInsets padding = MediaQuery.of(context).padding;
    return Container(
      padding: EdgeInsets.only(
          left: 0, top: padding.top, right: 0, bottom: padding.bottom),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text('顶部'),
          Text('底部'),
        ],
      ),
    );
  }
}
