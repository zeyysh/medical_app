class Doctor {
  String firstName;
  String lastName;
  String specialty;

  Doctor({this.firstName, this.lastName, this.specialty});

  Doctor.fromJson(Map<String, dynamic> json) {
    firstName = json['first_name'].toString();
    lastName = json['last_name'].toString();
    specialty = json['specialty'].toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['first_name'] = this.firstName;
    data['last_name'] = this.lastName;
    data['specialty'] = this.specialty;
    return data;
  }
}
