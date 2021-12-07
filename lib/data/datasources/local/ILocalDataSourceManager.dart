abstract class ILocalDataSourceManager<T> {
  Future<bool> initDb();

  Future<bool> addItems(List<T> items);
  // Future<bool> putItems(List<T> items);
  Future<bool> deleteAllItems();
  Future<List<T>> getItems();

  T? getItem(String key);
  // List<T>? getValues();

  Future<bool> putItem(String key, T item);
  Future<bool> removeItem(String key);
}
