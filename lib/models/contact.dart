class Contact {
  final String name;
  final String photo;
  final String email;
  final String phone;
  bool isFavorite;

  Contact({
    required this.email,
    required this.name,
    required this.phone,
    required this.photo,
    this.isFavorite = false,
  });
}
