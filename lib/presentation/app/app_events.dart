sealed class AppEvent {
  const AppEvent();
}

final class Navigate extends AppEvent {
  final Uri uri;

  const Navigate(this.uri);

  @override
  String toString() {
    return "Navigate(path=$uri)";
  }
}
