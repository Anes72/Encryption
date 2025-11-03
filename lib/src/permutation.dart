String permutation(String np){
    List<String> blocks = [];
    for (int i = 0; i < np.length; i += 3) {
      blocks.add(np.substring(i, i + 3));
    }

    for (int i = 0; i < blocks.length ~/ 2; i++) {
      String tmp = blocks[i];
      blocks[i] = blocks[blocks.length - i - 1];
      blocks[blocks.length - i - 1] = tmp;
    }

    String cypher = blocks.join();
    return cypher;
  }