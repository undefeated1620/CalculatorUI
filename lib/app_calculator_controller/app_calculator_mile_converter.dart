class KmMileConverter {
  num value;
  KmMileConverter(this.value);

  num convertMile() {
    return value / 1.6;
  }
}