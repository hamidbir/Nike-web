import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          BackgroundWidget(width: width),
          ShoeWidget(width: width),
          Positioned(
              right: width * 0.15,
              bottom: height * 0.18,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  InfoCardWidget(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                        onPressed: () {}, child: Text('Add to cart')),
                  ),
                ],
              )),
          Positioned(
              height: kToolbarHeight,
              width: width,
              child: AppBarWidget(width: width)),
          DividerWidget(width: width),
          NikeTextWidget(height: height, width: width),
          DescriptionShoeWidget(height: height, width: width),
        ],
      ),
    );
  }
}

class InfoCardWidget extends StatelessWidget {
  const InfoCardWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 8.0,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Text('AIR MAX',
                    style: TextStyle(color: Colors.black, fontSize: 27)),
                Text('27', style: TextStyle(color: Colors.black, fontSize: 24)),
                Text('\$99',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 27,
                        fontWeight: FontWeight.bold)),
              ],
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 15,
                  height: 15,
                  color: Colors.blue,
                ),
                SizedBox(height: 10),
                Container(
                  width: 15,
                  height: 15,
                  color: Colors.redAccent,
                ),
                SizedBox(height: 10),
                Container(
                  width: 15,
                  height: 15,
                  color: Colors.greenAccent,
                ),
                SizedBox(height: 10),
                Container(
                  width: 15,
                  height: 15,
                  color: Colors.purpleAccent,
                ),
                SizedBox(height: 10),
                Container(
                  width: 15,
                  height: 15,
                  color: Colors.amber,
                ),
                SizedBox(height: 10),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class DescriptionShoeWidget extends StatelessWidget {
  const DescriptionShoeWidget({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: height * 0.6,
        right: width * 0.35,
        child: Container(
          width: width * 0.15,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                '2021',
                style: TextStyle(
                    color: Colors.white54,
                    fontFamily: ' ',
                    fontSize: 60,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'AIR MAX',
                textAlign: TextAlign.end,
                style: TextStyle(
                    color: Colors.white54,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                '27',
                textAlign: TextAlign.end,
                style: TextStyle(
                    color: Colors.white54,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ));
  }
}

class NikeTextWidget extends StatelessWidget {
  const NikeTextWidget({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: height * 0.25,
        //left: width * 0.1,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              'Nike',
              style: TextStyle(
                  color: Colors.white54,
                  fontSize: 120,
                  letterSpacing: 10,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'Just Do It',
              style: TextStyle(
                  color: Colors.white54,
                  fontSize: 80,
                  letterSpacing: 10,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ));
  }
}

class DividerWidget extends StatelessWidget {
  const DividerWidget({
    Key? key,
    required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Positioned(
        height: kToolbarHeight * 2,
        width: width,
        child: Divider(
          color: Colors.white,
          thickness: 0.5,
        ));
  }
}

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    Key? key,
    required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: width * 0.3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                //TODO: Logo Nike
                Image.asset(
                  'assets/images/nikelogo.png',
                  width: 80,
                  color: Colors.white,
                ),
                Text('New Arrivals'),
                Text('Men'),
                Text('Women'),
                Text('Boys'),
                Text('Girls'),
              ],
            ),
          ),
          Container(
            width: width * 0.1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              children: [
                Icon(Icons.search, color: Colors.black),
                Icon(Icons.shopping_cart, color: Colors.black),
                Icon(Icons.menu, color: Colors.black),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ShoeWidget extends StatelessWidget {
  const ShoeWidget({
    Key? key,
    required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: kToolbarHeight * 1.5,
        right: width * 0.20,
        //TODO: Shoe Image
        child: Container(
          width: 400,
          height: 300,
          child: Image.asset(
            'assets/images/shoe.png',
            fit: BoxFit.cover,
            alignment: Alignment.centerLeft,
          ),
        ));
  }
}

class BackgroundWidget extends StatelessWidget {
  const BackgroundWidget({
    Key? key,
    required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
            child: Stack(
          fit: StackFit.expand,
          children: [
            //TODO:BackgroundImage
            Image.asset(
              'assets/images/background.jpg',
              alignment: Alignment.centerLeft,
            ),
            Container(
              color: Color.fromRGBO(0, 105, 233, 0.8),
            ),
          ],
        )),
        Container(
          width: width * 0.3,
          color: Colors.white,
        )
      ],
    );
  }
}
