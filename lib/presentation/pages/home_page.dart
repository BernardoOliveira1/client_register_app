import 'package:client_register_app/presentation/pages/register_page.dart';
import 'package:client_register_app/presentation/pages/client_list_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Colors.black,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Center(child: Text('Home')),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(
              mediaQuery.size.width * 0.02, 0, mediaQuery.size.width * 0.02, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: mediaQuery.size.width * 0.06,
              ),
              InkWell(
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const ClientListPage(),
                  ),
                ),
                child: NavigationCard(
                  mediaQuery: mediaQuery,
                  title: 'ANÁLISE E EDIÇÃO',
                  text:
                      'Tabela contendo número de matrícula, CPF\ne e-mail.\n\nPressione e segure em qualquer linha para \neditá-la ou excluí-la.',
                ),
              ),
              SizedBox(
                height: mediaQuery.size.width * 0.06,
              ),
              InkWell(
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const RegisterPage(),
                  ),
                ),
                child: NavigationCard(
                  mediaQuery: mediaQuery,
                  title: 'CADASTRO',
                  text:
                      'Cadastre um novo usuário utilizando número \nde matrícula, CPF e e-mail.',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NavigationCard extends StatelessWidget {
  const NavigationCard({
    Key? key,
    required this.mediaQuery,
    required this.title,
    required this.text,
  }) : super(key: key);

  final MediaQueryData mediaQuery;
  final String title;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: mediaQuery.size.height * 0.3,
      width: mediaQuery.size.height * 0.8,
      child: Card(
        color: Colors.grey.shade900,
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(mediaQuery.size.width * 0.06,
                      30.0, 0, mediaQuery.size.width * 0.06),
                  child: Text(
                    title,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: mediaQuery.size.width * 0.06,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const Expanded(child: SizedBox()),
                Padding(
                  padding: EdgeInsets.fromLTRB(
                      0, 0, mediaQuery.size.width * 0.06, 0),
                  child: const Icon(
                    Icons.arrow_forward,
                    size: 50,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(mediaQuery.size.width * 0.06),
                  child: Text(
                    text,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
