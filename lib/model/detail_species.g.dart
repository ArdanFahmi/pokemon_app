// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_species.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DetailSpecies _$DetailSpeciesFromJson(Map<String, dynamic> json) =>
    DetailSpecies(
      baseHappiness: json['baseHappiness'] as int?,
      captureRate: json['captureRate'] as int?,
      color: json['color'] == null
          ? null
          : Color.fromJson(json['color'] as Map<String, dynamic>),
      eggGroups: (json['eggGroups'] as List<dynamic>?)
          ?.map((e) => EggGroups.fromJson(e as Map<String, dynamic>))
          .toList(),
      evolutionChain: json['evolutionChain'] == null
          ? null
          : EvolutionChain.fromJson(
              json['evolutionChain'] as Map<String, dynamic>),
      flavorTextEntries: (json['flavorTextEntries'] as List<dynamic>?)
          ?.map((e) => FlavorTextEntries.fromJson(e as Map<String, dynamic>))
          .toList(),
      formsSwitchable: json['formsSwitchable'] as bool?,
      genderRate: json['genderRate'] as int?,
      genera: (json['genera'] as List<dynamic>?)
          ?.map((e) => Genera.fromJson(e as Map<String, dynamic>))
          .toList(),
      generation: json['generation'] == null
          ? null
          : Color.fromJson(json['generation'] as Map<String, dynamic>),
      growthRate: json['growthRate'] == null
          ? null
          : Color.fromJson(json['growthRate'] as Map<String, dynamic>),
      habitat: json['habitat'] == null
          ? null
          : Color.fromJson(json['habitat'] as Map<String, dynamic>),
      hasGenderDifferences: json['hasGenderDifferences'] as bool?,
      hatchCounter: json['hatchCounter'] as int?,
      id: json['id'] as int?,
      isBaby: json['isBaby'] as bool?,
      isLegendary: json['isLegendary'] as bool?,
      isMythical: json['isMythical'] as bool?,
      name: json['name'] as String?,
      names: (json['names'] as List<dynamic>?)
          ?.map((e) => Names.fromJson(e as Map<String, dynamic>))
          .toList(),
      order: json['order'] as int?,
      palParkEncounters: (json['palParkEncounters'] as List<dynamic>?)
          ?.map((e) => PalParkEncounters.fromJson(e as Map<String, dynamic>))
          .toList(),
      pokedexNumbers: (json['pokedexNumbers'] as List<dynamic>?)
          ?.map((e) => PokedexNumbers.fromJson(e as Map<String, dynamic>))
          .toList(),
      shape: json['shape'] == null
          ? null
          : Color.fromJson(json['shape'] as Map<String, dynamic>),
      varieties: (json['varieties'] as List<dynamic>?)
          ?.map((e) => Varieties.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DetailSpeciesToJson(DetailSpecies instance) =>
    <String, dynamic>{
      'baseHappiness': instance.baseHappiness,
      'captureRate': instance.captureRate,
      'color': instance.color,
      'eggGroups': instance.eggGroups,
      'evolutionChain': instance.evolutionChain,
      'flavorTextEntries': instance.flavorTextEntries,
      'formsSwitchable': instance.formsSwitchable,
      'genderRate': instance.genderRate,
      'genera': instance.genera,
      'generation': instance.generation,
      'growthRate': instance.growthRate,
      'habitat': instance.habitat,
      'hasGenderDifferences': instance.hasGenderDifferences,
      'hatchCounter': instance.hatchCounter,
      'id': instance.id,
      'isBaby': instance.isBaby,
      'isLegendary': instance.isLegendary,
      'isMythical': instance.isMythical,
      'name': instance.name,
      'names': instance.names,
      'order': instance.order,
      'palParkEncounters': instance.palParkEncounters,
      'pokedexNumbers': instance.pokedexNumbers,
      'shape': instance.shape,
      'varieties': instance.varieties,
    };
