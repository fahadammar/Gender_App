class NameList {
  var listofNames = ['ali', 'haider', 'usman', 'arslan', 'ammar'];

  // user search name start with a
  void gettingName() {
    for (var n in listofNames) {
      if (n.substring(0, 1) == 'a') {
        print(n);
      }
    }
  }
}
