import 'package:flutter/material.dart';
import 'services/api_news.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ApiNews apiNews = ApiNews();

  dynamic news;

  @override
  void initState() {
    super.initState();
    getNews();
  }

  void getNews() async {
    news = await apiNews.getHttp();

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(80, 51, 255, 1),
        centerTitle: true,
        title: const Text(
          "الرئيسية",
          style: TextStyle(
            color: Colors.white,
            fontFamily: "IBM_Plex_Sans_Arabic",
          ),
        ),
      ),

      body: news == null
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: news['articles'].length,
              itemBuilder: (context, index) {
                return Card(
                  child: Column(
                    children: [
                      Image.network(
                        news["articles"][index]["urlToImage"],
                      ),
                      Text(
                    news['articles'][index]['title']
                      ),
                    ],
                  ),
                );
              },
            ),
    );
  }
}