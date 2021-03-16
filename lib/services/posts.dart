import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:day12_login/models/post.dart';

class PostService {
  List<PostModel> _postListFromSnapshot(QuerySnapshot snapshot) {
    return snapshot.docs.map((doc) {
      return PostModel(
        id: doc.id,
        orgName: doc.data()['Organization Name'] ?? '',
        orgContact: doc.data()['Organization Contact'] ?? '',
        jobType: doc.data()['Job Type'] ?? '',
        jobDescription: doc.data()['Job Description'] ?? '',
      );
    }).toList();
  }

  Future savePost(orgName, orgContact, jobType, jobDescription, State, Address,
      OrgEmail) async {
    await FirebaseFirestore.instance.collection("Posts").add({
      'Organization Name': orgName,
      'Organization Contact': orgContact,
      'Job Description': jobDescription,
      'Job Type': jobType,
      'Posted On': FieldValue.serverTimestamp(),
      'Apply by': FieldValue.serverTimestamp(),
      'State': State,
      'Address': Address,
      'OrgEmail': OrgEmail,
      'User_id': FirebaseAuth.instance.currentUser.uid,
    });
  }

  Stream<List<PostModel>> getPostsByUser(uid) {
    return FirebaseFirestore.instance
        .collection("Posts")
        .where('User_id', isEqualTo: uid)
        .snapshots()
        .map(_postListFromSnapshot);
  }
}
