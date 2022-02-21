import 'package:flutter/material.dart';

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
