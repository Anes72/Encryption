import 'package:encryption/src/permutation.dart';

String decrypt(List <String> key, String cypher){
    cypher = permutation(cypher);
    var map = {
      key[0] : "a",
      key[1] : "b",
      key[2] : "c",
      key[3] : "d",
      key[4] : "e",
      key[5] : "f",
      key[6] : "g",
      key[7] : "h",
      key[8] : "i",
      key[9] : "j",
      key[10] : "k",
      key[11] : "l",
      key[12] : "m",
      key[13] : "n",
      key[14] : "o",
      key[15] : "p",
      key[16] : "q",
      key[17] : "r",
      key[18] : "s",
      key[19] : "t",
      key[20] : "u",
      key[21] : "v",
      key[22] : "w",
      key[23] : "x",
      key[24] : "y",
      key[25] : "z",
      key[26] : " ",
    };
    
    String x = "";
    String pt = "";

    for (int i = 0; i < cypher.length; i++) {
      x = x + cypher[i];

      if (map.containsKey(x)) {
        pt = pt + map[x]!;
        x = ""; 
      }
    }
    return pt;
  }