double calculateArea(double height, double base) {
    double area = (height * base) / 2;
    return area.parse(toStringAsFixed(2));
}
