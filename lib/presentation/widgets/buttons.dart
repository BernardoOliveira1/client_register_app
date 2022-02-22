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
      ],
    );
  }
}

class SecondaryButton extends StatelessWidget {
  const SecondaryButton({
    Key? key,
    required MediaQueryData mediaQuery,
    required this.color,
    required this.onPressed,
    required this.text,
  })  : _mediaQuery = mediaQuery,
        super(key: key);

  final MediaQueryData _mediaQuery;
  final Color color;
  final void Function()? onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(
                _mediaQuery.size.width * (9 / 360),
              ),
            ),
          ),
        ),
        backgroundColor: MaterialStateProperty.all<Color>(
          color,
        ),
      ),
      onPressed: onPressed,
      child: SizedBox(
        height: _mediaQuery.size.width * 0.1,
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: _mediaQuery.size.width * (18 / 360),
              fontWeight: FontWeight.w400,
              fontStyle: FontStyle.normal,
            ),
          ),
        ),
      ),
    );
  }
}
