import 'package:client_register_app/presentation/pages/register_page.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: 6,
              itemBuilder: (
                BuildContext context,
                int index,
              ) {
                return const ListTile(
                  leading: Text('02020'),
                  title: Text('44422266368'),
                  trailing: Text('example@gmail.com'),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
