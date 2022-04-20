import 'package:flutter/material.dart';
import 'package:netflix_clone/src/components/gridview/avatarlogo.dart';

class GridViewLogin extends StatelessWidget {
  const GridViewLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: GridView(
        padding: EdgeInsets.all(20),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        children: [
          UserAvatar(
              avatarLink:
                  'https://upload.wikimedia.org/wikipedia/commons/0/0b/Netflix-avatar.png',
              userName: 'Anderson'),
          UserAvatar(
              avatarLink:
                  'https://i.pinimg.com/736x/db/70/dc/db70dc468af8c93749d1f587d74dcb08.jpg',
              userName: 'João'),
          UserAvatar(
              avatarLink:
                  'https://i.pinimg.com/474x/10/12/c0/1012c06c7e1b0f8f5e60611992785e5a--stupid-stuff-stay-calm.jpg',
              userName: 'Maria'),
          UserAvatar(
              avatarLink:
                  'https://ih0.redbubble.net/image.618379802.1473/flat,1000x1000,075,f.u2.jpg',
              userName: 'Kids'),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: IconButton(
                    onPressed: () {},
                    icon: Container(
                      child: Center(
                        child: Icon(
                          Icons.add,
                          size: 30,
                        ),
                      ),
                      height: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white),
                    )),
              ),
              Text(
                'Adcionar usuário',
                style: TextStyle(color: Colors.white),
              )
            ],
          )
        ],
      ),
    );
    // return GridView.builder(
    //     padding: EdgeInsets.all(20),
    //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    //       crossAxisCount: 2,
    //     ),
    //     itemCount: 3,
    //     itemBuilder: (BuildContext context, int index) {
    //       return Padding(
    //         padding: const EdgeInsets.all(10),
    //         child: Container(
    //           width: 300,
    //           height: 300,
    //           color: Colors.white,
    //           child: Image.network(
    //               'https://upload.wikimedia.org/wikipedia/commons/0/0b/Netflix-avatar.png'),
    //         ),
    //       );
    //     });
  }
}
