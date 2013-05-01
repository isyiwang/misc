import java.util.*;

class ObfuPrinter {
  HashMap<Character, List<Character>> map;

  public ObfuPrinter() {
    map = new HashMap<Character, List<Character>>();
    ArrayList<Character> list = new ArrayList<Character>();
    list.add('@');
    list.add('4');
    map.put('a', list);
    list.clear();
    list.add('3');
    list.add('$');
    map.put('e', list);
    list.clear();
    list.add('0');
    list.add('O');
    map.put('o', list);
  }

  public void printObfuscated(String s) {
    printObfuscatedHelper(s, 0);
  }

  private void printObfuscatedHelper(String s, int index) {
    if (index == s.length()) {
      System.out.println(s);
      return;
    }

    char c = s.charAt(index);
    for (char alt : map.get(c)) {
      String altString = s.substring(0, index) + alt + s.substring(index + 1);
      printObfuscatedHelper(altString, index + 1);
    }
    printObfuscatedHelper(s, index + 1);
  }

  public static void main(String [ ] args) {
    ObfuPrinter printer = new ObfuPrinter();
    printer.printObfuscated("facebook");
  }
}