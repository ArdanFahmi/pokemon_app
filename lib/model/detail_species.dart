import 'package:json_annotation/json_annotation.dart';
part 'detail_species.g.dart';

@JsonSerializable()
class DetailSpecies {
  int? baseHappiness;
  int? captureRate;
  Color? color;
  List<EggGroups>? eggGroups;
  EvolutionChain? evolutionChain;
  List<FlavorTextEntries>? flavorTextEntries;
  bool? formsSwitchable;
  int? genderRate;
  List<Genera>? genera;
  Color? generation;
  Color? growthRate;
  Color? habitat;
  bool? hasGenderDifferences;
  int? hatchCounter;
  int? id;
  bool? isBaby;
  bool? isLegendary;
  bool? isMythical;
  String? name;
  List<Names>? names;
  int? order;
  List<PalParkEncounters>? palParkEncounters;
  List<PokedexNumbers>? pokedexNumbers;
  Color? shape;
  List<Varieties>? varieties;

  DetailSpecies(
      {this.baseHappiness,
      this.captureRate,
      this.color,
      this.eggGroups,
      this.evolutionChain,
      this.flavorTextEntries,
      this.formsSwitchable,
      this.genderRate,
      this.genera,
      this.generation,
      this.growthRate,
      this.habitat,
      this.hasGenderDifferences,
      this.hatchCounter,
      this.id,
      this.isBaby,
      this.isLegendary,
      this.isMythical,
      this.name,
      this.names,
      this.order,
      this.palParkEncounters,
      this.pokedexNumbers,
      this.shape,
      this.varieties});

  DetailSpecies.fromJson(Map<String, dynamic> json) {
    baseHappiness = json['base_happiness'];
    captureRate = json['capture_rate'];
    color = json['color'] != null ? Color.fromJson(json['color']) : null;
    if (json['egg_groups'] != null) {
      eggGroups = <EggGroups>[];
      json['egg_groups'].forEach((v) {
        eggGroups!.add(EggGroups.fromJson(v));
      });
    }
    evolutionChain = json['evolution_chain'] != null
        ? EvolutionChain.fromJson(json['evolution_chain'])
        : null;
    if (json['flavor_text_entries'] != null) {
      flavorTextEntries = <FlavorTextEntries>[];
      json['flavor_text_entries'].forEach((v) {
        flavorTextEntries!.add(FlavorTextEntries.fromJson(v));
      });
    }
    formsSwitchable = json['forms_switchable'];
    genderRate = json['gender_rate'];
    if (json['genera'] != null) {
      genera = <Genera>[];
      json['genera'].forEach((v) {
        genera!.add(Genera.fromJson(v));
      });
    }
    generation = json['generation'] != null
        ? Color.fromJson(json['generation'])
        : null;
    growthRate = json['growth_rate'] != null
        ? Color.fromJson(json['growth_rate'])
        : null;
    habitat =
        json['habitat'] != null ? Color.fromJson(json['habitat']) : null;
    hasGenderDifferences = json['has_gender_differences'];
    hatchCounter = json['hatch_counter'];
    id = json['id'];
    isBaby = json['is_baby'];
    isLegendary = json['is_legendary'];
    isMythical = json['is_mythical'];
    name = json['name'];
    if (json['names'] != null) {
      names = <Names>[];
      json['names'].forEach((v) {
        names!.add(Names.fromJson(v));
      });
    }
    order = json['order'];
    if (json['pal_park_encounters'] != null) {
      palParkEncounters = <PalParkEncounters>[];
      json['pal_park_encounters'].forEach((v) {
        palParkEncounters!.add(PalParkEncounters.fromJson(v));
      });
    }
    if (json['pokedex_numbers'] != null) {
      pokedexNumbers = <PokedexNumbers>[];
      json['pokedex_numbers'].forEach((v) {
        pokedexNumbers!.add(PokedexNumbers.fromJson(v));
      });
    }
    shape = json['shape'] != null ? Color.fromJson(json['shape']) : null;
    if (json['varieties'] != null) {
      varieties = <Varieties>[];
      json['varieties'].forEach((v) {
        varieties!.add(Varieties.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['base_happiness'] = baseHappiness;
    data['capture_rate'] = captureRate;
    if (color != null) {
      data['color'] = color!.toJson();
    }
    if (eggGroups != null) {
      data['egg_groups'] = eggGroups!.map((v) => v.toJson()).toList();
    }
    if (evolutionChain != null) {
      data['evolution_chain'] = evolutionChain!.toJson();
    }
    if (flavorTextEntries != null) {
      data['flavor_text_entries'] =
          flavorTextEntries!.map((v) => v.toJson()).toList();
    }
    data['forms_switchable'] = formsSwitchable;
    data['gender_rate'] = genderRate;
    if (genera != null) {
      data['genera'] = genera!.map((v) => v.toJson()).toList();
    }
    if (generation != null) {
      data['generation'] = generation!.toJson();
    }
    if (growthRate != null) {
      data['growth_rate'] = growthRate!.toJson();
    }
    if (habitat != null) {
      data['habitat'] = habitat!.toJson();
    }
    data['has_gender_differences'] = hasGenderDifferences;
    data['hatch_counter'] = hatchCounter;
    data['id'] = id;
    data['is_baby'] = isBaby;
    data['is_legendary'] = isLegendary;
    data['is_mythical'] = isMythical;
    data['name'] = name;
    if (names != null) {
      data['names'] = names!.map((v) => v.toJson()).toList();
    }
    data['order'] = order;
    if (palParkEncounters != null) {
      data['pal_park_encounters'] =
          palParkEncounters!.map((v) => v.toJson()).toList();
    }
    if (pokedexNumbers != null) {
      data['pokedex_numbers'] =
          pokedexNumbers!.map((v) => v.toJson()).toList();
    }
    if (shape != null) {
      data['shape'] = shape!.toJson();
    }
    if (varieties != null) {
      data['varieties'] = varieties!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Color {
  String? name;
  String? url;

  Color({this.name, this.url});

  Color.fromJson(Map<String, dynamic> json) {
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

class EvolutionChain {
  String? url;

  EvolutionChain({this.url});

  EvolutionChain.fromJson(Map<String, dynamic> json) {
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['url'] = url;
    return data;
  }
}

class FlavorTextEntries {
  String? flavorText;
  Color? language;
  Color? version;

  FlavorTextEntries({this.flavorText, this.language, this.version});

  FlavorTextEntries.fromJson(Map<String, dynamic> json) {
    flavorText = json['flavor_text'];
    language =
        json['language'] != null ? Color.fromJson(json['language']) : null;
    version =
        json['version'] != null ? Color.fromJson(json['version']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['flavor_text'] = flavorText;
    if (language != null) {
      data['language'] = language!.toJson();
    }
    if (version != null) {
      data['version'] = version!.toJson();
    }
    return data;
  }
}

class Genera {
  String? genus;
  Color? language;

  Genera({this.genus, this.language});

  Genera.fromJson(Map<String, dynamic> json) {
    genus = json['genus'];
    language =
        json['language'] != null ? Color.fromJson(json['language']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['genus'] = genus;
    if (language != null) {
      data['language'] = language!.toJson();
    }
    return data;
  }
}

class Names {
  Color? language;
  String? name;

  Names({this.language, this.name});

  Names.fromJson(Map<String, dynamic> json) {
    language =
        json['language'] != null ? Color.fromJson(json['language']) : null;
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

class PalParkEncounters {
  Color? area;
  int? baseScore;
  int? rate;

  PalParkEncounters({this.area, this.baseScore, this.rate});

  PalParkEncounters.fromJson(Map<String, dynamic> json) {
    area = json['area'] != null ? Color.fromJson(json['area']) : null;
    baseScore = json['base_score'];
    rate = json['rate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (area != null) {
      data['area'] = area!.toJson();
    }
    data['base_score'] = baseScore;
    data['rate'] = rate;
    return data;
  }
}

class PokedexNumbers {
  int? entryNumber;
  Color? pokedex;

  PokedexNumbers({this.entryNumber, this.pokedex});

  PokedexNumbers.fromJson(Map<String, dynamic> json) {
    entryNumber = json['entry_number'];
    pokedex =
        json['pokedex'] != null ? Color.fromJson(json['pokedex']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['entry_number'] = entryNumber;
    if (pokedex != null) {
      data['pokedex'] = pokedex!.toJson();
    }
    return data;
  }
}

class Varieties {
  bool? isDefault;
  Color? pokemon;

  Varieties({this.isDefault, this.pokemon});

  Varieties.fromJson(Map<String, dynamic> json) {
    isDefault = json['is_default'];
    pokemon =
        json['pokemon'] != null ? Color.fromJson(json['pokemon']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['is_default'] = isDefault;
    if (pokemon != null) {
      data['pokemon'] = pokemon!.toJson();
    }
    return data;
  }
}

class EggGroups {
  String? name;
  String? url;

  EggGroups({this.name, this.url});

  EggGroups.fromJson(Map<String, dynamic> json) {
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
