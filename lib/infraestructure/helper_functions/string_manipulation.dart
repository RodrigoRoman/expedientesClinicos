//create list of words to facilitate search with array-contains
List<String> generateKeywords(String word) {
  List<String> keywords = [];
  List<String> splittedWord = word.split(RegExp(r'[^\wW]+'));
  splittedWord = splittedWord.map((e) => removeSpecialCharacters(e)).toList();
  List<String> permutes = [];
  for (var wd in splittedWord) {
    if (word.length <= 1) {
      if (!keywords.contains(wd)) {
        keywords.add(wd);
      }
    } else {
      List<String> resultWords = wordSubs(wd);
      for (var el in resultWords) {
        if (!keywords.contains(el)) {
          keywords.add(el);
        }
      }
    }
  }
  permutes = permutations(splittedWord);
  for (var element in permutes) {
    if (!keywords.contains(element)) {
      keywords.add(element);
    }
  }
  for (var element in permutes) {
    List<String> resultWords = wordSubs(element);
    for (var el in resultWords) {
      if (!keywords.contains(el)) {
        keywords.add(el);
      }
    }
  }
  return keywords;
}

//Get permutations of a single word
List<String> wordSubs(String word) {
  List<String> substrings = [];
  for (var i = 0; i <= word.length - 1; i++) {
    for (var j = i + 1; ((j <= word.length) & ((j - i) >= 1)); j++) {
      if (!substrings.contains(word.substring(i, j))) {
        substrings.add(word.substring(i, j));
      }
    }
  }
  return substrings;
}

//get all the permutations of the list of words
List<String> permutations(List<String> strings) {
  List<String> result = [];
  int lengthStrings = strings.reduce((a, b) => a + b).length;
  void recursiveFn(int i, String newString) {
    if (newString.length == lengthStrings) {
      if (!result.contains(newString)) {
        result.add(newString);
      }
      return;
    }
    for (var n in strings) {
      if (!newString.contains(n)) {
        recursiveFn(i + 1, '${newString + n}');
      }
    }
    return;
  }

  recursiveFn(0, '');
  return result;
}

//Remove any special character from a string
//Make it useful for search purposes
String removeSpecialCharacters(String word) {
  return word.toLowerCase().replaceAll(RegExp(r'[^\w\d]|\s'), '');
}

truncate(String str, int maxLength) {
  if (str.length > maxLength) {
    return str.substring(0, maxLength);
  } else {
    return str;
  }
}
