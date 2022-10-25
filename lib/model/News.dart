class News{
  String? author;
  String? title;
  String? description;
  String? url;
  String? urlToImage;
 // DateTime? publishedAt;
  String? content;
  News({
    this.author,this.title,this.description,this.url,this.urlToImage,this.content
});
  factory News.fromJson(Map<String,dynamic> obj){
    return News(
      author: obj['author'],
      title: obj['title'],
      description: obj['description'],
      url: obj['url'],
      urlToImage: obj['urlToImage'],
    //  publishedAt: obj['publishedAt'],
      content: obj['content'],

    );
  }
}