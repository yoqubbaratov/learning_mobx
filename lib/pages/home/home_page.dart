import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../model/post_model.dart';
import 'home_store.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeStore store = HomeStore()..getAllPost();
    return Scaffold(
      appBar: AppBar(
        title: const Text("All posts"),
      ),
      body: Observer(
        builder: (context) {
          return Stack(
            children: [
              ListView.builder(
                  itemCount: store.list.length,
                  itemBuilder: (context, index) {
                    Post post = store.list[index];
                    return Card(
                      elevation: 5,
                      child: ListTile(
                        leading: GestureDetector(
                          onTap: ()=>store.updatePost(context, post),
                          child: const Icon(Icons.edit_outlined),
                        ),
                        title: Text(post.title),
                        subtitle: Text(post.body),
                        trailing: GestureDetector(
                          onTap: ()=>store.delitePost(context, post),
                          child: const Icon(Icons.delete),
                        ),
                      ),
                    );
                  }),
              Visibility(
                visible: store.isLoading,
                child: const Center(
                  child: CircularProgressIndicator(),
                ),
              )
            ],
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: ()=>store.goToDetailPage(context),
        child: const Center(
          child: Text(
            "NEW post",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
