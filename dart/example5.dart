void main() {
  int x = 5;
  // dynamic -> Generalizes all types
  // object -> All types are derived from Object
  dynamic y = 5; // More use of dynamic create performance issues
  y = "5";
  print(x); // takes less time to execute
  print(y);
}

// JIT (Just in Time) -- Hot Reloading
// AOT (Ahead of Time) -- Publishing program
