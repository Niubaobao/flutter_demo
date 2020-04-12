import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  Future<void> _launched;
  String _phone = '17630228063';

  Future<void> _launchInBrowser(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: false,
        headers: <String, String>{'my_header_key': 'my_header_value'},
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  Future<void> _makePhoneCall(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  List<int> hotGoodsList = [1, 2, 3, 4, 5, 6, 7];
  listWidget(double width) {
    List<Widget> listWidget = hotGoodsList.map((val) {
      return Container(
          width: (width / 2),
          height: 100,
          color: Colors.red,
          padding: EdgeInsets.all(5.0),
          margin: EdgeInsets.only(bottom: 3.0),
          child: Text(val.toString()));
    }).toList();
    return Wrap(
      runSpacing: 4.0, // 纵轴（垂直）方向间距
      alignment: WrapAlignment.start, //沿主轴方向居中
      // spacing: 2,
      children: listWidget,
    );
  }

  @override
  Widget build(BuildContext context) {
    const String toLaunch = 'https://www.baidu.com/';
    final size = MediaQuery.of(context).size;
    final width = size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text('测试区域'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            RaisedButton(
              onPressed: () => setState(() {
                _launched = _launchInBrowser(toLaunch);
              }),
              child: Text('url_launcher组件'),
            ),
            RaisedButton(
              onPressed: () => setState(() {
                _launched = _makePhoneCall('tel:$_phone');
              }),
              child: Text('拨打电话'),
            ),
            listWidget(width)
          ],
        ),
      ),
    );
  }
}
