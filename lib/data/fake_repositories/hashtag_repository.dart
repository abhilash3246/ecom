import 'models/hashtag.dart';

class HashtagRepository {
  //Fetch hashtags for product list screen
  //TODO: fetch hashtags from local DB
  List<HashTag> getHashtags() {
    return [
      HashTag(
        id: 1,
        title: 'T-shirts',
      ),
      HashTag(
        id: 2,
        title: 'Crop tops',
      ),
      HashTag(
        id: 3,
        title: 'Sleeveless',
      ),
      HashTag(
        id: 3,
        title: 'Shirts',
      ),
    ];
  }
}