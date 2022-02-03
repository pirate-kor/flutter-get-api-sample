class ArticleInfo {
  int id = 0;
  String article_content = "";
  String title = "";
  String description = "";
  String image = "";
  ArticleInfo(String image, int id, String article_content, String title,
      String description, String created_at, String author) {
    this.id = id;
    this.article_content = article_content;
    this.description = description;
    this.title = title;
    this.image = image;
  }

  ArticleInfo.fromJson(Map json)
      : id = json['id'],
        article_content = json['article_content'],
        description = json['description'],
        title = json['title'],
        image = json['image'];
}
