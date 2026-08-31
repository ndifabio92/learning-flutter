main() {
  // ===== Numeros
  int a = 10;
  double b = 5.5;

  // null safety
  int? c;

  int _a = 30;
  double $b = 40;

  double suma = _a + $b;

  // print(c);

  // ===== Strings
  var nombre = "Tony";
  String nombre2;
  String nombre3 = "O'Connor";
  String multiliniea = """ hola

  """;

  String nombreCompleto = "$nombre $nombre3";

  print(multiliniea);

  // ===== Booleans
  bool isActive = true;
  bool isNotActive = !isActive;

  // print(isActive);
  // print(isNotActive);

  // ===== Lists
  List<String> villanos = ['Lex', 'Red Skull', 'Doom'];
  villanos.add('Duende Verde');
  villanos.add('Duende Verde');

  Set<String> villanosSet = villanos.toSet();

  print(villanos);
  print(villanosSet.toList());

  // ===== Sets
  Set<String> villanos2 = {'Lex', 'Red Skull', 'Doom'};
  villanos2.add('Duende Verde');
  villanos2.add('Duende Verde');

  print(villanos2);

  // ===== Maps
  Map<String, dynamic> ironman = {
    'nombre': 'Tony Stark',
    'poder': 'Inteligencia y el dinero',
    'nivel': 9000,
  };
  print(ironman);
}
