sealed class AppError {
  const AppError();

  static const none = None();
  static const unknown = Unknown("");

  bool get isError => this is! None;
}

final class None extends AppError {
  const None();
}

final class Unknown extends AppError {
  final String message;

  const Unknown(this.message);
}
