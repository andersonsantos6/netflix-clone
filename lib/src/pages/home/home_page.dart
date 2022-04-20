import 'package:flutter/material.dart';
import 'package:netflix_clone/src/components/home/banner_home.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedPage = 0;
  void _onItemTapped(int index) {
    setState(() {
      selectedPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        extendBody: true,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(children: [
                HomeBanner(),
                Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 0, top: 10, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 40,
                            child: Image.asset('lib/src/assets/n_netflix.png'),
                          ),
                          const Text(
                            'Séries',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.white),
                          ),
                          const Text(
                            'Filmes',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.white),
                          ),
                          const Text(
                            'Minha lista',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ]),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: const [
                        Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                        Text(
                          'Minha lista',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.play_arrow),
                          Text('Assistir'),
                        ],
                      ),
                      height: 40,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5)),
                    ),
                    Column(
                      children: const [
                        Icon(
                          Icons.info_outline,
                          color: Colors.white,
                        ),
                        Text(
                          'Detalhes',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: const Text(
                  'Prévias',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
              Container(
                height: 200,
                width: double.infinity,
                child: ListView(scrollDirection: Axis.horizontal, children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: Column(
                      children: [
                        CircleAvatar(
                          maxRadius: 60,
                          backgroundImage: Image.network(
                            'https://blog.fortestecnologia.com.br/wp-content/uploads/2019/08/fortes-tecnologia-la-casa-de-papel.png',
                          ).image,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'La Casa de Papel',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: Column(
                      children: [
                        CircleAvatar(
                          maxRadius: 60,
                          backgroundImage: Image.network(
                            'https://cdn.ome.lt/uCqlEAHykyVUuDF03_w9wBgPIRg=/1200x630/smart/extras/conteudos/The_Witcher_MdNtb59.jpg',
                          ).image,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'The Witcher',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: Column(
                      children: [
                        CircleAvatar(
                          maxRadius: 60,
                          backgroundImage: Image.network(
                            'https://i0.wp.com/cloud.estacaonerd.com/wp-content/uploads/2022/04/15182540/Elite-5-temporada.jpg?resize=696%2C435&ssl=1',
                          ).image,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Elite',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: Column(
                      children: [
                        CircleAvatar(
                          maxRadius: 60,
                          backgroundImage: Image.network(
                            'https://img.ibxk.com.br/2022/04/18/18130930798339.jpg',
                          ).image,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'The Walking Dead',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ]),
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          unselectedLabelStyle: TextStyle(color: Colors.white38),
          selectedLabelStyle: TextStyle(fontSize: 10),
          fixedColor: Colors.white,
          onTap: _onItemTapped,
          unselectedItemColor: Colors.white38,
          unselectedIconTheme: const IconThemeData(color: Colors.white38),
          backgroundColor: Colors.black,
          currentIndex: selectedPage,
          iconSize: 30,
          showUnselectedLabels: true,
          items: const [
            BottomNavigationBarItem(
                backgroundColor: Colors.black,
                icon: Icon(
                  Icons.home,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                ),
                label: 'Buscar'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.video_settings,
                ),
                label: 'Em breve'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.download,
                ),
                label: 'Downloads'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.menu_rounded,
                ),
                label: 'Mais'),
          ],
        ),
      ),
    );
  }
}
