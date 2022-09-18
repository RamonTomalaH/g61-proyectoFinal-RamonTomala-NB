class ListRideModel {
  ListRideModel({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.path,
  });

  int id;
  String title;
  String description;
  double price;
  String path;
}

List<ListRideModel> rides = [
  ListRideModel(
    id: 1,
    title: "Casa",
    description: "Cdla. Guayaquil",
    price: 12.0,
    path: "assets/image/aveo.jpeg",
  ),
  ListRideModel(
    id: 2,
    title: "Trabajo",
    description: "Matriz",
    price: 22.0,
    path: "assets/image/spark.png",
  ),
  ListRideModel(
    id: 3,
    title: "Universidad",
    description: "Espol",
    price: 14.0,
    path: "assets/image/staria.jpg",
  ),
  ListRideModel(
    id: 4,
    title: "Trabajo dos",
    description: "Sucursal Norte",
    price: 16.0,
    path: "assets/image/staria.jpg",
  ),
  ListRideModel(
    id: 5,
    title: "Trabajo tres",
    description: "Sucursal Sur",
    price: 26.0,
    path: "assets/image/aveo.jpeg",
  ),
];
