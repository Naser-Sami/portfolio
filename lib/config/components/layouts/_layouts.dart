import 'package:flutter/material.dart';
import '/config/_config.dart';

class AppLargeLayout extends StatelessWidget {
  const AppLargeLayout({super.key, required this.delegate});
  final SliverChildDelegate delegate;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          const TSliverAppBarLarge(),
          SliverList(delegate: delegate),
          SliverList(delegate: SliverChildListDelegate([const FooterWidget()])),
        ],
      ),
    );
  }
}

class AppMediumLayout extends StatelessWidget {
  const AppMediumLayout({super.key, required this.delegate});
  final SliverChildDelegate delegate;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: endDrawer(context),
      body: CustomScrollView(
        slivers: <Widget>[
          const TSliverAppBarMedium(),
          SliverList(delegate: delegate),
          SliverList(delegate: SliverChildListDelegate([const FooterWidget()])),
        ],
      ),
    );
  }
}

class AppSmallLayout extends StatelessWidget {
  const AppSmallLayout({super.key, required this.delegate});
  final SliverChildDelegate delegate;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: drawer(context),
      body: CustomScrollView(
        slivers: <Widget>[
          const TSliverAppBarSmall(),
          SliverList(delegate: delegate),
          SliverList(delegate: SliverChildListDelegate([const FooterWidget()])),
        ],
      ),
    );
  }
}
