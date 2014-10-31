String[] words;
String[] good = { 
  "lady", "the"
};
int goodNum = 0;
String delimiters = " ,.:;'!_-()[]";
IntDict concordance;

void setup() {
  String[] lines = loadStrings("ladies.txt");
  String fulltext = join(lines, " ");
  words = splitTokens(fulltext, delimiters);
  concordance = new IntDict();

  for (int i = 0; i < words.length; i++) {
    if (words.equals(good[i])) {
      concordance.increment(words[i].toLowerCase());
    }
  }
}

void draw() {
  println("Good = "+goodNum);
}
