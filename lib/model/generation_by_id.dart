import 'package:json_annotation/json_annotation.dart';
part 'generation_by_id.g.dart';

@JsonSerializable()
class GenerationById {
  
  int? id;
  MainRegion? mainRegion;
  List<Moves>? moves;
  String? name;
  List<Names>? names;
  List<PokemonSpecies>? pokemonSpecies;
  List<Types>? types;
  List<VersionGroups>? versionGroups;

  GenerationById(
      {
      this.id,
      this.mainRegion,
      this.moves,
      this.name,
      this.names,
      this.pokemonSpecies,
      this.types,
      this.versionGroups});

  GenerationById.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    mainRegion = json['main_region'] != null
        ? MainRegion.fromJson(json['main_region'])
        : null;
    if (json['moves'] != null) {
      moves = <Moves>[];
      json['moves'].forEach((v) {
        moves!.add(Moves.fromJson(v));
      });
    }
    name = json['name'];
    if (json['names'] != null) {
      names = <Names>[];
      json['names'].forEach((v) {
        names!.add(Names.fromJson(v));
      });
    }
    if (json['pokemon_species'] != null) {
      pokemonSpecies = <PokemonSpecies>[];
      json['pokemon_species'].forEach((v) {
        pokemonSpecies!.add(PokemonSpecies.fromJson(v));
      });
    }
    if (json['types'] != null) {
      types = <Types>[];
      json['types'].forEach((v) {
        types!.add(Types.fromJson(v));
      });
    }
    if (json['version_groups'] != null) {
      versionGroups = <VersionGroups>[];
      json['version_groups'].forEach((v) {
        versionGroups!.add(VersionGroups.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    if (mainRegion != null) {
      data['main_region'] = mainRegion!.toJson();
    }
    if (moves != null) {
      data['moves'] = moves!.map((v) => v.toJson()).toList();
    }
    data['name'] = name;
    if (names != null) {
      data['names'] = names!.map((v) => v.toJson()).toList();
    }
    if (pokemonSpecies != null) {
      data['pokemon_species'] = pokemonSpecies!.map((v) => v.toJson()).toList();
    }
    if (types != null) {
      data['types'] = types!.map((v) => v.toJson()).toList();
    }
    if (versionGroups != null) {
      data['version_groups'] = versionGroups!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class MainRegion {
  String? name;
  String? url;

  MainRegion({this.name, this.url});

  MainRegion.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['url'] = url;
    return data;
  }
}

class Names {
  MainRegion? language;
  String? name;

  Names({this.language, this.name});

  Names.fromJson(Map<String, dynamic> json) {
    language =
        json['language'] != null ? MainRegion.fromJson(json['language']) : null;
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (language != null) {
      data['language'] = language!.toJson();
    }
    data['name'] = name;
    return data;
  }
}

class Moves {
  String? name, url;

  Moves.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['url'] = url;
    return data;
  }
}

class PokemonSpecies {
  String? name, url;

  PokemonSpecies.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['url'] = url;
    return data;
  }
}

class Types {
  String? name, url;

  Types.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['url'] = url;
    return data;
  }
}

class VersionGroups {
  String? name, url;
  VersionGroups.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['url'] = url;
    return data;
  }
}
