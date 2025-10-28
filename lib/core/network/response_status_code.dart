enum ResponseStatusCode {
  unAuthenticated,
  oldVersion,
  refreshTokenExpired;

  get value {
    switch (this) {
      case ResponseStatusCode.unAuthenticated:
        return 'E004';
      case ResponseStatusCode.refreshTokenExpired:
        return 'E012';
      case ResponseStatusCode.oldVersion:
        return 'E17';
    }
  }
}
