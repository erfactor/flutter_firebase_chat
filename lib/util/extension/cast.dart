extension Cast<T> on T {
  R? cast<R>() {
    if (this is R) {
      return this as R;
    } else {
      return null;
    }
  }
}
