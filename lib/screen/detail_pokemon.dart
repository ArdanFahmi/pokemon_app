import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:pokemon_app/component/custom_theme.dart';
import 'package:pokemon_app/component/header.dart';
import 'package:pokemon_app/model/detail_species.dart';
import 'package:pokemon_app/service/retrofit/api_client.dart';

class DetailPokemon extends StatefulWidget {
  final int genId;
  const DetailPokemon({Key? key, required this.genId}) : super(key: key);

  @override
  _DetailPokemonState createState() => _DetailPokemonState();
}

class _DetailPokemonState extends State<DetailPokemon> {
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
      children: [
        Builder(builder: (BuildContext context) {
          return Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/bgGreen.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                          height: screenHeight - 180,
                          width: screenWidth - 100,
                          padding: EdgeInsets.only(
                            left: 16.0,
                            right: 16.0,
                            bottom: MediaQuery.of(context).viewInsets.bottom,
                          ),
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(30.0),
                              topLeft: Radius.circular(30.0),
                              bottomLeft: Radius.circular(30.0),
                              bottomRight: Radius.circular(30.0),
                            ),
                          ),
                          child: FutureBuilder(
                              future: client.getSpeciesById(widget.genId),
                              builder: (context,
                                  AsyncSnapshot<DetailSpecies> snapshot) {
                                if (snapshot.connectionState ==
                                    ConnectionState.done) {
                                  return Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          padding: EdgeInsets.only(
                                              top: screenHeight - 580),
                                          child: Text(
                                            snapshot.data!.name!,
                                            style: const TextStyle(
                                                fontSize: 24.0,
                                                color: Colors.black,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10.0,
                                        ),
                                        const Text(
                                          "detaillllll",
                                          style: TextStyle(
                                              fontSize: 16.0,
                                              color: greyLite,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        const SizedBox(
                                          height: 10.0,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Flexible(
                                              flex: 1,
                                              child: Container(
                                                width: 150,
                                                height: screenHeight / 13,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          30.0),
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
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Flexible(
                                                          flex: 1,
                                                          child: Center(
                                                            child: Text(
                                                              'About',
                                                              style: Theme.of(
                                                                      context)
                                                                  .textTheme
                                                                  .bodyLarge!
                                                                  .copyWith(
                                                                      color: Colors
                                                                          .white),
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
                                                borderRadius:
                                                    BorderRadius.circular(30.0),
                                                color: Colors.transparent,
                                                border: Border.all(
                                                  color: greenBtnExplore,
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
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Flexible(
                                                            flex: 1,
                                                            child: Center(
                                                              child: Text(
                                                                'Base State',
                                                                style: Theme.of(
                                                                        context)
                                                                    .textTheme
                                                                    .bodyLarge!
                                                                    .copyWith(
                                                                      color:
                                                                          greenBtnExplore,
                                                                    ),
                                                              ),
                                                            ))
                                                      ],
                                                    ),
                                                  )),
                                            ))
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 20.0,
                                        ),
                                        Row(
                                          children: [
                                            Table(
                                              defaultColumnWidth:
                                                  const FixedColumnWidth(80.0),
                                              border: TableBorder.all(
                                                  color: Colors.transparent),
                                              children: [
                                                TableRow(children: [
                                                  const Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text('Habitat',
                                                            style: TextStyle(
                                                                fontSize: 14.0))
                                                      ]),
                                                  const Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(':',
                                                            style: TextStyle(
                                                                fontSize: 14.0))
                                                      ]),
                                                  Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                            snapshot.data!
                                                                .habitat!.name!,
                                                            style:
                                                                const TextStyle(
                                                                    fontSize:
                                                                        14.0))
                                                      ]),
                                                ]),
                                                TableRow(children: [
                                                  const Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text('Legendary',
                                                            style: TextStyle(
                                                                fontSize: 14.0))
                                                      ]),
                                                  const Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(':',
                                                            style: TextStyle(
                                                                fontSize: 14.0))
                                                      ]),
                                                  Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                            snapshot.data!
                                                                .isLegendary
                                                                .toString(),
                                                            style:
                                                                const TextStyle(
                                                                    fontSize:
                                                                        14.0))
                                                      ]),
                                                ]),
                                                TableRow(children: [
                                                  const Column(children: [
                                                    Text('Mythical',
                                                        style: TextStyle(
                                                            fontSize: 14.0))
                                                  ]),
                                                  const Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(':',
                                                            style: TextStyle(
                                                                fontSize: 14.0))
                                                      ]),
                                                  Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                            snapshot.data!
                                                                .isMythical
                                                                .toString(),
                                                            style:
                                                                const TextStyle(
                                                                    fontSize:
                                                                        14.0))
                                                      ]),
                                                ]),
                                                TableRow(children: [
                                                  const Column(children: [
                                                    Text('Baby',
                                                        style: TextStyle(
                                                            fontSize: 14.0))
                                                  ]),
                                                  const Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(':',
                                                            style: TextStyle(
                                                                fontSize: 14.0))
                                                      ]),
                                                  Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                            snapshot
                                                                .data!.isBaby
                                                                .toString(),
                                                            style:
                                                                const TextStyle(
                                                                    fontSize:
                                                                        14.0))
                                                      ]),
                                                ]),
                                              ],
                                            )
                                          ],
                                        )
                                      ]);
                                } else {
                                  return const Center(
                                    child: CircularProgressIndicator(
                                      color: greenBold,
                                    ),
                                  );
                                }
                              })),
                    ),
                    // center of image pokemon
                    FractionalTranslation(
                      translation: const Offset(0.0, -0.5),
                      child: Align(
                        alignment: const FractionalOffset(0.5, 0.0),
                        child: SizedBox(
                          child: Image.asset(
                            'assets/images/pikachu.png',
                            width: 200,
                            height: 200,
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          );
        }),
        const Header(
          title: "",
          assetLeftBtn: "assets/icons/icLeftBlack.png",
        )
      ],
    ));
  }
}
