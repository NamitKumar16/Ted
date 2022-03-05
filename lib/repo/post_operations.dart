import 'package:ted/models/post.dart';

//Singleton
class PostOperations {
  static PostOperations _postOperations = PostOperations();
  _PostOperations() {}
  static PostOperations getInstance() {
    return _postOperations;
  }

  List<Post> getPosts() {
    return [
      Post(
          author: 'Neo',
          title: 'Explaining the Matrix',
          time: '16:23',
          imageURL:
              'https://news.olemiss.edu/wp-content/uploads/2019/10/UCIMG-1027-2048x1150.jpg'),
      Post(
          author: 'Namit Kumar',
          title: 'Why so Serious?',
          time: '20:22',
          imageURL:
              'https://seaver.pepperdine.edu/ldp/.private_ldp/a223113/production/master/0ca0c857-2be8-4e06-825a-9fc74b103d44.jpg'),
      Post(
          author: 'Manish',
          title: 'I will not study',
          time: '0:00',
          imageURL:
              'https://www.incimages.com/uploaded_files/image/1920x1080/2015-10-03-Alejandro-Garcia-TEDx-UC-Irvine-2015-52_111941.jpg'),
      Post(
          author: 'Mohit',
          title: 'I dont have Time',
          time: '-10:25',
          imageURL:
              'https://www.tedxlausanne.com/app/uploads/2018/03/16724796676_e79850e5d0_o-700x467.jpg'),
      Post(
          author: 'Netflix',
          title: 'DARK',
          time: '1:05:50',
          imageURL:
              'https://www.incimages.com/uploaded_files/image/1920x1080/TEDxPaloAlto-374_401597.jpg')
    ];
  }
}
