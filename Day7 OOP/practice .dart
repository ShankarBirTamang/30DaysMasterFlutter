/*
Create an abstract class called ArticleDataSource with method getArticle(String id), and deleteArticle(String id).
Create a class called ArticleLocalDataSource that implements the ArticleDataSource
Implement each method and print operation, source, and the provided id. 
For example, calling getArticle('dart-today-and-tomorrow') should print Get Local dart-today-and-tomorrow
Add a factory constructor to ArticleLocalDataSource and return the object of ArticleLocalDataSource.
Instantiate ArticleLocalDataSource using the factory constructor and call each methods on the object.
Create and implement ArticleAPIDataSource exactly like ArticleLocalDataSource 
but print Get API dart-today-and-tomorrow instead of Get Local dart-today-and-tomorrow.
*/
abstract class ArticleDataSource {
  void getArticle(String id);
  void deleteArticle(String id);
}
class ArticleLocalDataSource implements ArticleDataSource{
  factory ArticleLocalDataSource()=>ArticleLocalDataSource._internal(); //Returning object of Private constructor using factory constructor
  ArticleLocalDataSource._internal(); //private constructor
  @override 
  void getArticle(String id){
    print("Get Local $id");
  }
  @override
  void deleteArticle(String id){
    print("Delete Local $id ");
  }
}
class ArticleAPIDataSource implements ArticleDataSource{
  factory ArticleAPIDataSource()=>ArticleAPIDataSource._internal();
  ArticleAPIDataSource._internal();
   @override 
  void getArticle(String id){
    print("Get API $id");
  }
  @override
  void deleteArticle(String id){
    print("Delete API $id ");
  }
}
void main(){
  var articleLocalDataSource = ArticleLocalDataSource();
  articleLocalDataSource.getArticle('dart-today and tomorrow');
  articleLocalDataSource.deleteArticle('dart-today and tomorrow');

  var articleAPIDataSource = ArticleAPIDataSource();
  articleAPIDataSource.getArticle('dart-today and tomorrow');
  articleAPIDataSource.deleteArticle('dart-today and tomorrow');
}