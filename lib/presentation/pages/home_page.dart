import 'package:client_register_app/presentation/pages/register_page.dart';
import 'package:client_register_app/presentation/pages/search_page.dart';
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

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    Key? key,
    required this.mediaQuery,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  final MediaQueryData mediaQuery;
  final String text;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: EdgeInsets.fromLTRB(
              mediaQuery.size.width * (16 / 360),
              mediaQuery.size.width * (4 / 360),
              mediaQuery.size.width * (16 / 360),
              mediaQuery.size.width * (4 / 360),
            ),
            child: OutlinedButton(
              style: ButtonStyle(
                side: MaterialStateProperty.all<BorderSide>(
                  BorderSide(
                    width: mediaQuery.size.width * (1.2 / 360),
                    color: Colors.blue,
                  ),
                ),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(mediaQuery.size.width * (9 / 360)),
                    ),
                  ),
                ),
              ),
              onPressed: onPressed,
              child: SizedBox(
                height: mediaQuery.size.width * 0.1,
                child: Center(
                  child: Text(
                    text,
                    style: TextStyle(
                      fontSize: mediaQuery.size.width * (18 / 360),
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
