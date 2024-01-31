import 'package:dio/dio.dart';
import 'package:pokemon_app/model/detail_species.dart';
import 'package:pokemon_app/model/generation_by_id.dart';
import 'package:pokemon_app/model/generation_list.dart';
import 'package:pokemon_app/service/retrofit/apis.dart';
import 'package:retrofit/retrofit.dart';

part 'api_client.g.dart';

@RestApi(baseUrl: "https://pokeapi.co/api/v2/")
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @GET(Apis.generation)
  Future<GenerationList> getListGeneration();

  @GET("${Apis.generationById}{id}")
  Future<GenerationById> getGenerationById(@Path("id") int genId);

  @GET("${Apis.speciesById}{id}")
  Future<DetailSpecies> getSpeciesById(@Path("id") int specId);
}
