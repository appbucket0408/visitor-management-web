import 'dart:convert';

import 'package:society_management_app/models/json_data.dart';

class Society {
  List<Block> blocks;

  Society({required this.blocks});

  factory Society.fromJson(Map<String, dynamic> json) {
    List<Block> blocks =
        (json['blocks'] as List).map((block) => Block.fromJson(block)).toList();
    return Society(blocks: blocks);
  }
}

class Block {
  String blockId;
  List<Tower> towers;

  Block({required this.blockId, required this.towers});

  factory Block.fromJson(Map<String, dynamic> json) {
    List<Tower> towers =
        (json['towers'] as List).map((tower) => Tower.fromJson(tower)).toList();
    return Block(blockId: json['blockId'], towers: towers);
  }
}

class Tower {
  String towerId;
  List<Flat> flats;

  Tower({required this.towerId, required this.flats});

  factory Tower.fromJson(Map<String, dynamic> json) {
    List<Flat> flats =
        (json['flats'] as List).map((flat) => Flat.fromJson(flat)).toList();
    return Tower(towerId: json['towerId'], flats: flats);
  }
}

class Flat {
  String flatId;

  Flat({required this.flatId});

  factory Flat.fromJson(Map<String, dynamic> json) {
    return Flat(flatId: json['flatId']);
  }
}

Society  parseJsonData() {
  Map<String, dynamic> parsedJson = jsonDecode(jsonData);
  return  Society.fromJson(parsedJson['society']);
  //print(society.blocks[0].towers[0].flats[0].flatId);
  
}
