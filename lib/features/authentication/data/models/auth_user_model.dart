class AuthUserModel {
  final int userId;
  final String uniCode;
  final String name;
  final String email;
  final String typeCode;
  final int totalHours;
  final int level;
  final String? profilePicture;

  const AuthUserModel({
    required this.userId,
    required this.uniCode,
    required this.name,
    required this.email,
    required this.typeCode,
    required this.totalHours,
    required this.level,
    this.profilePicture,
  });

  factory AuthUserModel.fromJson(Map<String, dynamic> json) {
    return AuthUserModel(
      userId: json['user_id'] as int,
      uniCode: json['uni_code'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
      typeCode: json['type_code'] as String,
      totalHours: json['total_hours'] as int,
      level: json['level'] as int,
      profilePicture: json['profile_picture'] as String?,
    );
  }
}
