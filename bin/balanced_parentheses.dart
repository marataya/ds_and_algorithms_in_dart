import 'stack.dart';

bool isBalancedParentheses(String input) {
  var stack = Stack();
  for(final ch in input.split('')) {
    if(ch == '(') {
      stack.push(ch);
    } else if(ch == ')') {
      if(stack.isEmpty || stack.pop() != '(') return false;
    }
  }
  return stack.isEmpty;
}


void main() {
  print(isBalancedParentheses('(a + b) * (c - d) )'));
  print(isBalancedParentheses('h((e))llo(world)()'));
}