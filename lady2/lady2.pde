String[] words;
String[] good = { 
  "lady", "must"
};
int goodNum = 0;
String delimiters = " ,.:;'!_-()[]";

String [] stopWords = loadStrings("datafile.txt");
IntDict concordance;

void setup() {
  size(800, 800);
  String[] lines = loadStrings("https://raw.githubusercontent.com/t-lamb/allprocessing/master/lady2/data/ladies.txt");
  String fulltext = join(lines, " ");
  words = splitTokens(fulltext, delimiters);
  concordance = new IntDict();

  for (int i = 0; i < words.length; i++) {
    for (int j = 0; j < good.length; j++) {
      if (words[i].equals(good[j])) {
        concordance.increment(words[i].toLowerCase());
      }
    }
  }
}

void draw() {
  for (int i = 0; i < good.length; i++) {
    goodNum = concordance.get(good[i]);
    ellipse(random(width), height/2, goodNum, goodNum);
  }

  //ellipse(concordance.get("ladies"), concordance.get("the"), 10, 10);
}
