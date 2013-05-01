boolean equalPalindromes(String a, String b) {
  if (a.length != b.length)
    return false;

  int maxIndex = a.length % 2 == 1 ? a.length / 2 + 1 : a.length / 2;

  for (int i = 0; i < maxIndex; i++)
    if (a.charAt(i) != b.charAt(b.length - 1 - i))
      return false;

  return true;
}

