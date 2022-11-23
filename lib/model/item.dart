import 'dart:html';

class Item {
  String imgPath;
  double prince;
  String location;
  String name;
  Item(
      {required this.imgPath,
      required this.prince,
      this.location = "Main branch",
      required this.name});
}

List<Item> items = [
  Item(
      name: "book1",
      imgPath:
          "https://as1.ftcdn.net/v2/jpg/04/03/44/18/1000_F_403441840_n2V9oYfDCpAGMO3k93iOtiS0sdmHE1us.jpg",
      prince: 10.99,
      location: "Ahmed shop"),
  Item(
      name: "book2",
      imgPath:
          "https://as2.ftcdn.net/v2/jpg/04/04/32/45/1000_F_404324569_zX1J9WpJWvjTPoKkD1QikaHu2Ro2A6O0.jpg",
      prince: 2.99),
  Item(
      name: "book3",
      imgPath:
          "https://as2.ftcdn.net/v2/jpg/04/05/79/33/1000_F_405793335_xTlaDaOSqOTBhJ42ZtMlJQ1aKCdw3mbr.jpg",
      prince: 97.99),
  Item(
      name: "book4",
      imgPath:
          "https://as1.ftcdn.net/v2/jpg/04/13/83/48/1000_F_413834884_4b0ATUwPT02Jb74zT2JGufIIUVjmLXBG.jpg",
      prince: 133.99),
  Item(
      name: "book5",
      imgPath:
          "https://as2.ftcdn.net/v2/jpg/04/14/92/15/1000_F_414921511_jQnhpV4m1USNfVg6yOQcbGbQhyTt6Khg.jpg",
      prince: 13.99),
  Item(
      name: "book6",
      imgPath:
          "https://as1.ftcdn.net/v2/jpg/04/13/83/50/1000_F_413835000_rvaGpGLJebXRVUsRUkO3rGZQ8mkCJ670.jpg",
      prince: 77.99),
  Item(
      name: "book7",
      imgPath:
          "https://as1.ftcdn.net/v2/jpg/04/15/13/44/1000_F_415134459_XwBHbU0tuyJiOqOtWeTI7UVhtoiDuGUI.jpg",
      prince: 45.99),
  Item(
      name: "book8",
      imgPath:
          "https://as1.ftcdn.net/v2/jpg/03/90/84/48/1000_F_390844834_Hm9JFowyimPtUaKyhQLsHuTZjhWs0aD8.jpg",
      prince: 19.99),
];
