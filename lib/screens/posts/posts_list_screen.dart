import 'package:flutter/material.dart';

import '../../Shared/dio_helper.dart';
import '../../models/posts_model.dart';

class PostsList extends StatefulWidget {
  const PostsList({Key? key}) : super(key: key);

  @override
  State<PostsList> createState() => _PostsListState();
}

class _PostsListState extends State<PostsList> {
  List<Welcome> posts = [];
  bool loading = true;

  getPosts() async {
    posts = await PostsService().getPosts();
    loading = false;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    getPosts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: loading
          ? const Center(
        child: CircularProgressIndicator(),
      )
          : ListView.builder(
        itemCount: posts.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: Text("${posts[index].id}"),
            title: Text(posts[index].title),
            subtitle: Text(posts[index].body),
            // trailing: Icon(Icons.person),
          );
        },
      ),
    );
  }
}




