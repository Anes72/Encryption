import 'package:encryption/src/permutation.dart';

String encrypt(List<String> key,String pt){
    var dictionnaire = {
      "a" : key[0],
      "b" : key[1],
      "c" : key[2],
      "d" : key[3],
      "e" : key[4],
      "f" : key[5],
      "g" : key[6],
      "h" : key[7],
      "i" : key[8],
      "j" : key[9],
      "k" : key[10],
      "l" : key[11],
      "m" : key[12],
      "n" : key[13],
      "o" : key[14],
      "p" : key[15],
      "q" : key[16],
      "r" : key[17],
      "s" : key[18],
      "t" : key[19],
      "u" : key[20],
      "v" : key[21],
      "w" : key[22],
      "x" : key[23],
      "y" : key[24],
      "z" : key[25],
      " " : key[26],
    };
    var char = pt.split('');
    for (var i = 0; i < pt.length; i++) {
      char[i] = dictionnaire[char[i]]!;
    }
    String np = char.join();
    String cypher = permutation(np);
    return cypher;
  }