String[] words;
IntDict concordance;
int index = 0;
String delimiters = " ,.:;'!_-()[]";

void setup() {
  size(600, 400);
  String[] lines = loadStrings("ladies.txt");
  String allthetxt = join(lines, " ");
  words = splitTokens(allthetxt, delimiters);
  concordance = new IntDict();

  for (int i = 0; i < words.length; i++) {
    if (words.equals("lady")) {
      concordance.increment(words[i].toLowerCase());
    }
  }

  println(concordance);
}

void draw() {
  background(0);
 

  // //make an array of keys
  // String[] keys = concordance.keyArray();

  // for (int i = 0; i < keys.length; i++) {
  //   int count = concordance.get(keys[i]);
  //   println(keys[i], count);
  // }
  noLoop();
}
