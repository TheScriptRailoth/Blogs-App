import 'dart:convert';

import 'package:blogs_app/blog_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class HomeScreenWidget extends StatefulWidget {
  const HomeScreenWidget({super.key});

  @override
  State<HomeScreenWidget> createState() => _HomeScreenWidgetState();
}

class _HomeScreenWidgetState extends State<HomeScreenWidget> {
  List<Map<String,dynamic>> blogData=[];
  void fetchBlogs() async {
    final String url = 'https://intent-kit-16.hasura.app/api/rest/blogs';
    final String adminSecret = '32qR4KmXOIpsGPQKMqEJHGJS27G5s7HdSKO3gdtQd2kv5e852SiYwWNfxkZOBuQ6';

    try {
      final response = await http.get(Uri.parse(url), headers: {
        'x-hasura-admin-secret': adminSecret,
      });

      if (response.statusCode == 200) {
        print('Response data: ${response.body}');
      } else {
        print('Request failed with status code: ${response.statusCode}');
        print('Response data: ${response.body}');
      }
    } catch (e) {
      print('Error: $e');
    }
  }
  @override
  void initState() {
    fetchBlogs();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    // fetchBlogs();
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  BlogCard(
                    title: 'Blog Title 1',
                    imgUrl: 'https://example.com/image1.jpg',
                  ),
                  BlogCard(
                    title: 'Blog Title 2',
                    imgUrl: 'https://example.com/image2.jpg',
                  ),
                  // Add more BlogCard widgets as needed
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
