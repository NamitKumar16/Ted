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
          title: 'Your Elusive Creative Genius',
          time: '16:23',
          imageURL:
              'https://news.olemiss.edu/wp-content/uploads/2019/10/UCIMG-1027-2048x1150.jpg'),
      Post(
          author: 'Tom Thum',
          title: 'The Orchestra In My Mouth',
          time: '20:22',
          imageURL:
              'https://seaver.pepperdine.edu/ldp/.private_ldp/a223113/production/master/0ca0c857-2be8-4e06-825a-9fc74b103d44.jpg'),
      Post(
          author: 'Brene Brown',
          title: 'The Power of Vulnerability',
          time: '21:54',
          imageURL:
              'https://www.incimages.com/uploaded_files/image/1920x1080/2015-10-03-Alejandro-Garcia-TEDx-UC-Irvine-2015-52_111941.jpg'),
      Post(
          author: 'Sam Berns',
          title: 'Philosophy for A Happy Life',
          time: '10:25',
          imageURL:
              'https://www.tedxlausanne.com/app/uploads/2018/03/16724796676_e79850e5d0_o-700x467.jpg'),
      Post(
          author: 'Isaac Lidsky',
          title: 'What Reality Are You',
          time: '25:40',
          imageURL:
              'https://www.incimages.com/uploaded_files/image/1920x1080/TEDxPaloAlto-374_401597.jpg')
    ];
  }
}
