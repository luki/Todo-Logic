class Item {
  String title;
  var description;
  bool isFinished;

  String return_title() => title;
  bool return_status() => isFinished;
}

class ItemList {
  String name;
  var description;
  List <Item> items = new List();

  void create_item(String new_title, new_description) {
    Item new_item = new Item()
    ..title = new_title
    ..description = new_description
    ..isFinished = false;
    items.add(new_item);
  }

  Item return_item(Int position) => items[position];

  String return_name() => name;
}

class Manager {
  List <ItemList> item_lists = new List();

  void create_item_list(String new_name, new_description) {
    ItemList new_item_list = new ItemList()
    ..name = new_name
    ..description = new_description;
    item_lists.add(new_item_list);
  }

  ItemList return_item_list(int position) => item_lists[position];

}

main() {
  var manager = new Manager();
  manager.create_item_list("School", "Information");
  print(manager.return_item_list(0).return_name());
  manager.return_item_list(0).create_item("Do homework", "Urgently");
  print(manager.return_item_list(0).return_item(0).return_title());
}
