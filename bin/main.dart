import 'package:encryption/encryption.dart';
import 'package:encryption/src/encryption.dart';
import 'dart:io';

void main() {
  print("Submit your message: ");
  String? message = stdin.readLineSync();
  print("Your message: $message");
  List <String> key = generateKey();
  String cypher = encrypt(key, message!);
  print("Encrypted: $cypher");

  String plainText = decrypt(key, cypher);
  print("Decrypted: $plainText");
}
