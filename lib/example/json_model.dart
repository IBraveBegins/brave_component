import '../models/user.dart';

void main() {
  var u = User.fromJson({"name": "Brave", "age": 18, "+1": 20});
  print(u.loved); // 20
}
