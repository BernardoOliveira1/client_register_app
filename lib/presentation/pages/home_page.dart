import 'package:client_register_app/presentation/pages/register_page.dart';
import 'package:client_register_app/presentation/pages/search_page.dart';
import 'package:client_register_app/presentation/widgets/buttons.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            PrimaryButton(
              mediaQuery: mediaQuery,
              text: 'Pesquisar',
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const SearchPage(),
                ),
              ),
            ),
            PrimaryButton(
              mediaQuery: mediaQuery,
              text: 'Cadastrar',
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const RegisterPage(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
