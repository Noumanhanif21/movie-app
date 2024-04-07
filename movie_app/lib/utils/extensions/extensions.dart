extension StringToUri on String {
  toUri() => Uri.parse(this);
}

extension ToNewFormat on DateTime {
  toPakistanFormat() => 'Pakistan zindabad ${toString()}';
}
