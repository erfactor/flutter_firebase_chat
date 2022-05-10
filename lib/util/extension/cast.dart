extension Cast<T> on T {
  R? cast<R>() => this is R ? this as R : null;
}
