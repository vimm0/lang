// Singleton
void main() {
  Item item = Item("Some state");
  Item item2 = Item("Some other state");
  Item item3 = Item("different state");
  print(item == item2);
  print(item2 == item3);
  print(item.state);
  print(item2.state);
  print(item3.state);
}

class Item {
  static Item item;

  String state;

  factory Item(String state){
    if(Item.item == null) {
      Item.item = Item._internal()..state = state;
    }
    return Item.item..state = state;
  }
  Item._internal();
}
