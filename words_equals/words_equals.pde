String[] words = {
  "I", "love", "coffee", "I", "love", "tea"
};
for (int i = 0; i < words.length; i++) {
  for (int j = 3; i < words.length; j++) {
    if (words[i].equals(words[j])) {
      println(words[j] + " is a duplicate.");
    }
  }
}
