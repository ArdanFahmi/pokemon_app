// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'generation_by_id.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GenerationById _$GenerationByIdFromJson(Map<String, dynamic> json) =>
    GenerationById(
      id: json['id'] as int?,
      mainRegion: json['mainRegion'] == null
          ? null
          : MainRegion.fromJson(json['mainRegion'] as Map<String, dynamic>),
      moves: (json['moves'] as List<dynamic>?)
          ?.map((e) => Moves.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] as String?,
      names: (json['names'] as List<dynamic>?)
          ?.map((e) => Names.fromJson(e as Map<String, dynamic>))
          .toList(),
      pokemonSpecies: (json['pokemonSpecies'] as List<dynamic>?)
          ?.map((e) => PokemonSpecies.fromJson(e as Map<String, dynamic>))
          .toList(),
      types: (json['types'] as List<dynamic>?)
          ?.map((e) => Types.fromJson(e as Map<String, dynamic>))
          .toList(),
      versionGroups: (json['versionGroups'] as List<dynamic>?)
          ?.map((e) => VersionGroups.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GenerationByIdToJson(GenerationById instance) =>
    <String, dynamic>{
      'id': instance.id,
      'mainRegion': instance.mainRegion,
      'moves': instance.moves,
      'name': instance.name,
      'names': instance.names,
      'pokemonSpecies': instance.pokemonSpecies,
      'types': instance.types,
      'versionGroups': instance.versionGroups,
    };
