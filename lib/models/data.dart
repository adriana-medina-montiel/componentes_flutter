class Data{
  String? nombre;
  bool? gustoFlutter;
  int? califFlutter;
  String? moviDev;
  bool? web;
  bool? emulador;
  bool? smartphone;

  Data({required String nomb, required bool gusto, required int calif, required String moviD, required bool nav, required bool emul, required bool phone}
  ){
    nombre = nomb;
    gustoFlutter =gusto;
    califFlutter = calif;
    moviDev = moviD;
    web = nav;
    emulador = emul;
    smartphone = phone;

  }
}