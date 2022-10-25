import 'dart:core';
class Movie{
  final String TenPhim;
  final String TheLoai;
  final String NoiDung;
  final String Anh;


  Movie(this.TenPhim, this.TheLoai, this.NoiDung, this.Anh);
  static  List<Movie> MockData(){
    List<Movie> ls=[];
    ls.add(Movie("olala", "hài kịch"," Lorem Ipsum is simply dummy text of the printing and typesetting industry. "
        "Lorem paddipsum has been the industry's standard dummy text ever since the 1500s, "
        "when an unknown printer took a galley of type and scrambled it to make a type specimen book. "
       ,
        "assets/images/10x-featured-social-media-image-size.png"));
    ls.add(Movie("olala2", "hài bi",
        " Lorem Ipsum is simply dummy text of the printing and typesetting industry. "
            "Lorem paddipsum has been the industry's standard dummy text ever since the 1500s, "
            "when an unknown printer took a galley of type and scrambled it to make a type specimen book. "
        ,"assets/images/10x-featured-social-media-image-size.png"));
    ls.add(Movie("olala3", "hài lãng mạng",
        " Lorem Ipsum is simply dummy text of the printing and typesetting industry. "
            "Lorem paddipsum has been the industry's standard dummy text ever since the 1500s, "
            "when an unknown printer took a galley of type and scrambled it to make a type specimen book. "
        , "assets/images/10x-featured-social-media-image-size.png"));
    return ls;
  }


}


