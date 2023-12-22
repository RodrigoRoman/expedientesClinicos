import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class FullScreenStatePage extends StatelessWidget {
  FullScreenStatePage({required this.content, required this.title});
  Widget content;
  String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBodyBehindAppBar: true,
      appBar: AppBar(
          clipBehavior: Clip.none,
          toolbarOpacity: 0.5,
          forceMaterialTransparency: true,
          backgroundColor: Colors.white60,
          shadowColor: Colors.white60,
          title: FittedBox(
            child: Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .copyWith(color: Theme.of(context).primaryColorDark),
            ),
          ),
          iconTheme: IconThemeData(
              color: Theme.of(context).primaryColor //change your color here
              ),
          actions: [
            FloatingActionButton(
              onPressed: () {},
              child: Icon(Icons.menu),
            )
            // CircleAvatar(
            //     backgroundColor: Theme.of(context).primaryColor,
            //     child: IconButton(onPressed: () {}, icon: Icon(Icons.menu)))
          ]),
      body: content,
    );
  }
}
