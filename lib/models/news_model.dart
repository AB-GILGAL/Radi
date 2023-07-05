import 'package:flutter/material.dart';

class News {
  String newsTitle;
  Image image;

  News({required this.image, required this.newsTitle});

  List<Object?> get props => [image, newsTitle];
  static List<News> news = [
    News(
        image: Image.network(
          "https://s3-eu-west-1.amazonaws.com/eumultisitev4prod-live-eb461540d2184169bb77db2b062d9318-f268f99/PI%20UK/images/sharecast/stocks-hero.jpg",
        ),
        newsTitle:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."),
    News(
        image: Image.network(
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS8ay3B5C1uxzX7l6m0uaefi42utHUkHtKL11pPcxEZYONsUu9taPetN_0Gj360H0VWLkM&usqp=CAU",
        ),
        newsTitle:
            "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
    News(
        image: Image.network(
          "https://c8.alamy.com/comp/C7X89C/stock-market-financial-trading-screen-on-lcd-screen-C7X89C.jpg",
        ),
        newsTitle:
            "Tempus imperdiet nulla malesuada pellentesque. Ornare massa eget egestas purus viverra accumsan in. Et egestas quis ipsum suspendisse ultrices gravida dictum fusce ut. Purus sit amet volutpat consequat mauris.")
  ];
}
