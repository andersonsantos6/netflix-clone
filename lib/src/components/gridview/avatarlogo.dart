import 'package:flutter/material.dart';

class UserAvatar extends StatelessWidget {
  final String userName;
  final String avatarLink;

  const UserAvatar({Key? key, required this.avatarLink, required this.userName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: InkWell(
        onTap: () {
          Navigator.of(context).pushNamed('/home');
        },
        child: Container(
          child: Column(
            children: [
              Expanded(
                flex: 8,
                child: Image.network(avatarLink),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                flex: 1,
                child: Text(
                  userName,
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
