import 'dart:core';
    class destination{
    final String id;
    final String name;
    final String image;
    final List<String> genre;
    final int rating;

  destination(this.id, this.name, this.image, this.genre, this.rating);
  static  List<destination> MockData(){
    List<destination> ls=[];
    ls.add(destination("1", "lăng khải định", "assets/images/10x-featured-social-media-image-size.png", [''], 4));
    ls.add(destination("2", "lăng minh mạng", "assets/images/10x-featured-social-media-image-size.png", [''], 4));
    ls.add(destination("2", "lăng minh mạng", "assets/images/10x-featured-social-media-image-size.png", [''], 4));
    return ls;
  }


    }


