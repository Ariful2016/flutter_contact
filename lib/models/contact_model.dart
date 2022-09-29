
class ContactModel{
  int? id;
  String name;
  String email;
  String phone;
  String designation;
  String companyName;
  String address;
  String webSite;
  bool isFavorite;

  ContactModel(
      {this.id,
      this.name = '',
      this.email = '',
      this.phone = '',
      this.designation = '',
      this.companyName = '',
      this.address = '',
      this.webSite = '',
      this.isFavorite = false});

  @override
  String toString() {
    return 'ContactModel{id: $id, name: $name, email: $email, phone: $phone, designation: $designation, companyName: $companyName, address: $address, webSite: $webSite, isFavorite: $isFavorite}';
  }
}