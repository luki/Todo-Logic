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

  void swap_items(int position1, int position2) {
    var item1 = items[position1];
    var item2 = items[position2];

    items[position1] = item2;
    items[position2] = item1;
  }

  Item return_item(int position) => items[position];

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

  void swap_item_lists(int position1, int position2) {
    var list1 = item_lists[position1];
    var list2 = item_lists[position2];

    item_lists[position1] = list2;
    item_lists[position2] = list1;
  }

  ItemList return_item_list(int position) => item_lists[position];
}

main() {
  var manager = new Manager();
  manager.create_item_list("School", "Information");
  manager.create_item_list("Work", null);
  print(manager.return_item_list(0).return_name());
  manager.return_item_list(0).create_item("Do homework", "Urgently");
  manager.return_item_list(0).create_item("Study", "Weird");
  manager.return_item_list(0).create_item("Go to event", "Urgently");
  manager.return_item_list(0).create_item("Practice for German", "Urgently");
  manager.return_item_list(0).create_item("Check out Spanish", "Urgently");
  print(manager.return_item_list(0).return_item(0).return_title());
  print("Swap items");
  print(manager.return_item_list(0).return_item(1).return_title());
  print(manager.return_item_list(0).return_item(3).return_title());
  manager.return_item_list(0).swap_items(1, 3);
  print("Swap!");
  print(manager.return_item_list(0).return_item(1).return_title());
  print(manager.return_item_list(0).return_item(3).return_title());
  print("Swap lists");
  print(manager.return_item_list(0).return_name());
  print(manager.return_item_list(1).return_name());
  manager.swap_item_lists(0, 1);
  print("Swap!");
  print(manager.return_item_list(0).return_name());
  print(manager.return_item_list(1).return_name());
}
