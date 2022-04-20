import 'package:flutter/material.dart';

class AppBarLogin extends StatelessWidget {
  const AppBarLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SizedBox(
          width: 40,
        ),
        Container(
          width: 180,
          child: Image.asset('lib/src/assets/logonetflix.png'),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.edit,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
