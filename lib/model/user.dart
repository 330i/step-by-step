import 'package:cloud_firestore/cloud_firestore.dart';

class Athlete {

  String username;
  String email;
  String uid;
  String url;
  int rank;
  double mile;
  int pushup;
  int crunch;

  DocumentReference reference;

  Athlete({this.username, this.email, this.uid, this.url, this.rank, this.mile, this.pushup, this.crunch});

  factory Athlete.fromSnapshot(DocumentSnapshot snapshot) {
    Athlete newUser = Athlete.fromJson(snapshot.data());
    newUser.reference = snapshot.reference;
    return newUser;
  }

  factory Athlete.fromJson(Map<String, dynamic> json) {
    return Athlete(
      username: json['username'] as String,
      email: json['email'] as String,
      uid: json['uid'] as String,
      url: json['photo'] as String,
      rank: json['rank'] as int,
      mile: json['mile'] as double,
      pushup: json['pushup'] as int,
      crunch: json['crunch'] as int,
    );
  }

  Map<String, dynamic> toJson() => _AthleteToJson(this);

  Map<String, dynamic> _AthleteToJson(Athlete instance) {
    return <String, dynamic> {
      'username': instance.username,
      'email': instance.email,
      'uid': instance.uid,
      'photo': instance.url,
      'rank': instance.rank,
      'mile': instance.mile,
      'pushup': instance.pushup,
      'crunch': instance.crunch,
    };
  }

}