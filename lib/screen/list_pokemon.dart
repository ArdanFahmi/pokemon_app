import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:pokemon_app/component/background.dart';
import 'package:pokemon_app/component/card_pokemon.dart';
import 'package:pokemon_app/component/custom_theme.dart';
import 'package:pokemon_app/component/header.dart';
import 'package:pokemon_app/model/generation_by_id.dart';
import 'package:pokemon_app/screen/detail_pokemon.dart';
import 'package:pokemon_app/service/retrofit/api_client.dart';

class ListPokemon extends StatefulWidget {
  final String? title;
  final int genId;

  const ListPokemon({Key? key, this.title, required this.genId})
      : super(key: key);

  @override
  _ListPokemonState createState() => _ListPokemonState();
}

class _ListPokemonState extends State<ListPokemon> {
  final client = ApiClient(Dio(BaseOptions(contentType: "application/json")));
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        extendBodyBehindAppBar: true,
        body: Stack(
          children: <Widget>[
            const Background(
              backgroundImage: AssetImage('assets/images/bgMain.png'),
              isDarken: true,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Stack(
                  children: [
                    Container(
                        height: screenHeight - 120,
                        width: screenWidth,
                        padding: EdgeInsets.only(
                          left: 16.0,
                          right: 16.0,
                          bottom: MediaQuery.of(context).viewInsets.bottom,
                        ),
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [Color(0xFFE6FAE8), Colors.white],
                          ),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(30.0),
                            topLeft: Radius.circular(30.0),
                          ),
                        ),
                        child: FutureBuilder(
                            future: client.getGenerationById(widget.genId),
                            builder: (context,
                                AsyncSnapshot<GenerationById> snapshot) {
                              if (snapshot.connectionState ==
                                  ConnectionState.done) {
                                var regionName =
                                    snapshot.data?.mainRegion?.name;
                                var speciesList = snapshot.data?.pokemonSpecies;
                                return Column(
                                  children: [
                                    const SizedBox(
                                      height: 20.0,
                                    ),
                                    Container(
                                      height: screenHeight / 13,
                                      constraints: BoxConstraints(
                                          maxWidth: screenWidth * 0.6),
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(30.0),
                                        color: greenRegion,
                                        border: Border.all(
                                          color: greenRegion,
                                          width: 2.0,
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Flexible(
                                              flex: 0,
                                              child: Image.asset(
                                                "assets/icons/icPokeBall.png",
                                                width: 20.0,
                                                height: 20.0,
                                              )),
                                          const SizedBox(
                                            width: 5.0,
                                          ),
                                          Flexible(
                                              flex: 0,
                                              child: Center(
                                                child: RichText(
                                                  text: TextSpan(
                                                    style: const TextStyle(
                                                      fontSize: 16.0,
                                                      color: Colors.black,
                                                    ),
                                                    children: <TextSpan>[
                                                      const TextSpan(
                                                          text: 'REGION: '),
                                                      TextSpan(
                                                          text: regionName,
                                                          style: const TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold)),
                                                    ],
                                                  ),
                                                ),
                                              ))
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 8.0,
                                    ),
                                    Expanded(
                                      child: GridView.builder(
                                          gridDelegate:
                                              const SliverGridDelegateWithFixedCrossAxisCount(
                                                  crossAxisCount: 2,
                                                  childAspectRatio:
                                                      0.8 // Number of columns
                                                  ),
                                          itemCount: speciesList?.length,
                                          itemBuilder: (ctx, idx) {
                                            var nameItem =
                                                speciesList?[idx].name;
                                            var urlDetail =
                                                speciesList?[idx].url;

                                            // Split the URL using '/' as the delimiter
                                            List<String> urlParts =
                                                urlDetail!.split('/');

                                            // Extract the last part of the URL, which should be the ID
                                            String idString =
                                                urlParts[urlParts.length - 2];

                                            // Convert the ID string to an integer
                                            int id =
                                                int.tryParse(idString) ?? 0;

                                            return InkWell(
                                              onTap: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            DetailPokemon(
                                                                genId: id)));
                                              },
                                              child: CardPokemon(
                                                  name: nameItem!,
                                                  amount: "13000"),
                                            );
                                          }),
                                    ),
                                  ],
                                );
                              } else {
                                return const Center(
                                  child: CircularProgressIndicator(
                                    color: greenBold,
                                  ),
                                );
                              }
                            })),
                  ],
                )
              ],
            ),
            Header(
              title: widget.title,
              assetLeftBtn: "assets/icons/icLeft.png",
            ),
          ],
        ));
  }
}
