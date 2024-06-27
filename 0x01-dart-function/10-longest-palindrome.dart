bool isPalindrome(String s) {
  if (s.length < 3) return false;
  String reversed = s.split('').reversed.join('');
  return s == reversed;
}
String longestPalindrome(String s) {
  int maxL = 0;
  String longest = "none";

  for (int i = 0; i < s.length; i++) {
    for (int j = i + 2; j <= s.length; j++) {
      String substring = s.substring(i, j);
      if (isPalindrome(substring) && substring.length > maxL) {
        maxL = substring.length;
        longest = substring;
      }
    }
  }

  return longest;
}