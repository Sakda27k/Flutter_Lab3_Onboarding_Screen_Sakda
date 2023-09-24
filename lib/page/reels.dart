import 'package:flutter/material.dart';

class ReelsPage extends StatefulWidget {
  @override
  _ReelsPageState createState() => _ReelsPageState();
}

class _ReelsPageState extends State<ReelsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Reels"),
        backgroundColor: Color.fromARGB(255, 255, 81, 0),
      ),
      body: ListView(
        children: [
          Container(
            color: Color.fromARGB(255, 59, 236, 4),
            height: 700,
            child: Center(child: Image.network('https://img.4gamers.com.tw/ckfinder-th/image2/auto/2022-10/iclg6t-221017-155705.jpg?versionId=ugMMgUUbWOVlJ7vcAii4DX1HP7.ZGiYz'))
          ),
          Container(
            color: Colors.blue,
            height: 700,
             child: Center(child: Image.network('https://steamuserimages-a.akamaihd.net/ugc/845963567852352572/081B561D67825771D3B045613B4C5267D1228F82/?imw=637&imh=358&ima=fit&impolicy=Letterbox&imcolor=%23000000&letterbox=true'))
          ),
          Container(
            color: const Color.fromARGB(255, 107, 255, 77),
            height: 700,
             child: Center(child: Image.network('https://media.steelseriescdn.com/filer_public/c2/ec/c2ec1dd9-fb85-41f0-8517-7dd79aca81a3/ss_logo_icon_001.png'))
          ),
          Container(
            color: Colors.blue,
            height: 700,
             child: Center(child: Image.network('data:image/png;base64,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'))
          ),
          Container(
           color: const Color.fromARGB(255, 107, 255, 77),
            height: 700,
             child: Center(child: Image.network('https://img.4gamers.com.tw/ckfinder-th/image2/auto/2022-10/iclg6t-221017-155705.jpg?versionId=ugMMgUUbWOVlJ7vcAii4DX1HP7.ZGiYz'))
          ),
          Container(
            color: Colors.blue,
            height: 700,
             child: Center(child: Image.network('https://img.4gamers.com.tw/ckfinder-th/image2/auto/2022-10/iclg6t-221017-155705.jpg?versionId=ugMMgUUbWOVlJ7vcAii4DX1HP7.ZGiYz'))
          )
        ],
      ),
    );
  }
}