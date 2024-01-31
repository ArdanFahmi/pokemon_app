import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:pokemon_app/component/background.dart';
import 'package:pokemon_app/component/custom_theme.dart';
import 'package:pokemon_app/model/generation_list.dart';
import 'package:pokemon_app/screen/list_pokemon.dart';
import 'package:pokemon_app/service/retrofit/api_client.dart';

class Home extends StatefulWidget {
  static const String routeName = 'home';

  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final client = ApiClient(Dio(BaseOptions(contentType: "application/json")));

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          const Background(
            backgroundImage: AssetImage('assets/images/bgMain.png'),
            isDarken: true,
          ),
          Center(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 110.0, bottom: 10.0),
                  child: const Text(
                    "EXPLORE POKEMON",
                    style: TextStyle(
                        fontSize: 24.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                FutureBuilder(
                    future: client.getListGeneration(),
                    builder: (context, AsyncSnapshot<GenerationList> snapshot) {
                      if (snapshot.connectionState == ConnectionState.done) {
                        var dataResults = snapshot.data?.results;
                        return Expanded(
                            child: ListView.builder(
                                itemCount: snapshot.data?.count,
                                itemBuilder: (ctx, idx) {
                                  var nameGen = dataResults?[idx].name;
                                  var generationId = idx + 1;
                                  return Container(
                                    //Button list 'Generation'
                                    width: screenWidth / 1.3,
                                    height: screenHeight / 14,
                                    margin: const EdgeInsets.only(
                                        bottom: 20.0, left: 40, right: 40),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30.0),
                                      color: Colors.transparent,
                                      border: Border.all(
                                        color: greenBold,
                                        width: 2.0,
                                      ),
                                    ),
                                    child: Material(
                                      color: Colors.transparent,
                                      child: InkWell(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    ListPokemon(
                                                      title: nameGen!,
                                                      genId: generationId,
                                                    )),
                                          );
                                        },
                                        child: Center(
                                          child: Text(
                                            nameGen!,
                                            style: const TextStyle(
                                                fontSize: 18.0,
                                                color: greenLite,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                }));
                      } else {
                        return const Center(
                          child: CircularProgressIndicator(
                            color: greenBold,
                          ),
                        );
                      }
                    }),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      flex: 1,
                      child: Container(
                        width: 150,
                        height: screenHeight / 13,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          color: greenBtnExplore,
                          border: Border.all(
                            color: greenBtnExplore,
                            width: 2.0,
                          ),
                        ),
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () {
                              debugPrint("Pressed");
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Flexible(
                                    flex: 1,
                                    child: Image.asset(
                                      "assets/icons/icExplore.png",
                                      width: 30.0,
                                      height: 30.0,
                                    )),
                                Flexible(
                                  flex: 1,
                                  child: Center(
                                    child: Text(
                                      'EXPLORE',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyLarge!
                                          .copyWith(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20.0,
                    ),
                    Flexible(
                        child: Container(
                      width: 150,
                      height: screenHeight / 13,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: Colors.transparent,
                        border: Border.all(
                          color: Colors.white,
                          width: 2.0,
                        ),
                      ),
                      child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: (() {
                              debugPrint("Pressed");
                            }),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Flexible(
                                    flex: 1,
                                    child: Image.asset(
                                      "assets/icons/icFavorite.png",
                                      width: 30.0,
                                      height: 30.0,
                                    )),
                                Flexible(
                                  flex: 1,
                                  child: Center(
                                    child: Text(
                                      'FAVORITE',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyLarge!
                                          .copyWith(color: Colors.white),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )),
                    ))
                  ],
                ),
                const SizedBox(
                  height: 10.0,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
