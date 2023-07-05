import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:radi_app/models/news_model.dart';

class NewsPageBody extends StatefulWidget {
  const NewsPageBody({super.key});

  @override
  State<NewsPageBody> createState() => _NewsPageBodyState();
}

class _NewsPageBodyState extends State<NewsPageBody> {
  PageController pageController = PageController(viewportFraction: 0.85);
  var currentPageValue = 0.0;
  double scaleFactor = 0.8;

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        currentPageValue = pageController.page!;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
            height: MediaQuery.of(context).size.height / 3.51,
            child: PageView.builder(
              controller: pageController,
              itemCount: News.news.length,
              itemBuilder: (context, index) {
                return newPageItem(index);
              },
            )),
        DotsIndicator(
          dotsCount: News.news.length,
          position: currentPageValue,
          decorator: DotsDecorator(
            size: const Size.square(9.0),
            activeSize: const Size(18.0, 9.0),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0)),
          ),
        )
      ],
    );
  }

  Widget newPageItem(int index) {
    double height = MediaQuery.of(context).size.height / 4.96;
    Matrix4 matrix = Matrix4.identity();
    if (index == currentPageValue.floor()) {
      var currScale = 1 - (currentPageValue - index) * (1 - scaleFactor);
      var currTrans = height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == currentPageValue.floor() + 1) {
      var currScale =
          scaleFactor + (currentPageValue - index + 1) * (1 - scaleFactor);
      var currTrans = height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == currentPageValue.floor() + 1) {
      var currScale = 1 - (currentPageValue - index) * (1 - scaleFactor);
      var currTrans = height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else {
      var currScale = 0.8;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, height * (1 - scaleFactor) / 2, 0);
    }

    return Transform(
      transform: matrix,
      child: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 4.96,
            margin: EdgeInsets.only(
                left: MediaQuery.of(context).size.height / 168.8,
                right: MediaQuery.of(context).size.height / 168.8),
            decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                      color: Color(0xFFe8e8e8),
                      blurRadius: 5.0,
                      offset: Offset(0, 5)),
                  BoxShadow(color: Colors.white, offset: Offset(-5, 0)),
                  BoxShadow(color: Colors.white, offset: Offset(5, 0))
                ],
                borderRadius: BorderRadius.circular(10),
                color: Colors.red,
                image: DecorationImage(
                    image: News.news[index].image.image, fit: BoxFit.cover)),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height / 9.37,
              margin: EdgeInsets.only(
                  left: MediaQuery.of(context).size.height / 42.2,
                  right: MediaQuery.of(context).size.height / 42.2,
                  bottom: MediaQuery.of(context).size.height / 28.13),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                        color: Color(0xFFe8e8e8),
                        blurRadius: 5.0,
                        offset: Offset(0, 5)),
                    BoxShadow(color: Colors.white, offset: Offset(-5, 0)),
                    BoxShadow(color: Colors.white, offset: Offset(5, 0))
                  ]),
              child: Padding(
                padding:
                    EdgeInsets.all(MediaQuery.of(context).size.height / 168.5),
                child: Text(
                  News.news[index].newsTitle,
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height / 64.92),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
