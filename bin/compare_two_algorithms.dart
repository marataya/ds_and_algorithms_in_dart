int sumFromOneTo(int n) {
  int sum = 0;
  for (var i = 1; i <= n ; i++) {
    sum += i;
  }
  return sum;
}

int betterSumFromOneTo(int n) {
  return n*(n+1) ~/2;
}

//compare two algorithms
void main(List<String> arguments) {
  var start = DateTime.now();
  print(sumFromOneTo(10000));
  var end = DateTime.now();
  print(end.difference(start));
  start = DateTime.now();
  print(betterSumFromOneTo(10000));
  end = DateTime.now();
  print(end.difference(start));
}
