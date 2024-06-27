String longestUniqueSubstring(String str) {
  int L = str.length;
  int maxL = 0;
  String longestSubstring = "";
  
  int start = 0;
  Map<String, int> dict = {};

  for (int end = 0; end < L; end++) {
    String char = str[end];
    
    if (dict.containsKey(char)) {
      start = dict[char]! + 1;
      dict.removeWhere((key, value) => value < start);
    }

    dict[char] = end;
    int currentLength = end - start + 1;
    
    if (currentLength > maxL) {
      maxL = currentLength;
      longestSubstring = str.substring(start, end + 1);
    }
  }

  return longestSubstring;
}
