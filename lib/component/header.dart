import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final String? title, assetLeftBtn;
  const Header({Key? key, this.title, this.assetLeftBtn}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 64.0),
                child: InkWell(
                  onTap: () {
                    debugPrint("Btn Back");
                    Navigator.pop(context);
                  },
                  child: Image.asset(
                    assetLeftBtn!,
                    height: 20,
                  ),
                )),
          ],
        ),
        Positioned(
          top: 60.0,
          left: 0,
          right: 0,
          child: Center(
            child: Text(
              title!,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
