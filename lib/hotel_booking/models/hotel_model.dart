// ignore_for_file: public_member_api_docs, sort_constructors_first
class Hotel {
  final String name;
  final String image;
  final String location;
  final double rating;
  final int reviews;
  final double price;
  final List<String> amenities;
  final String about;
  final int totalRooms;
  final int totalBeds;
  Hotel({
    required this.name,
    required this.image,
    required this.location,
    required this.rating,
    required this.reviews,
    required this.price,
    required this.amenities,
    required this.about,
    required this.totalRooms,
    required this.totalBeds,
  });
}
