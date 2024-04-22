import 'dart:io';
import 'vehiculo.dart';
import 'Usuario.dart';

class Menu {
  imprimirmenu() async {
    int? opcion;
    do {
      stdout.writeln('''Elige una opcion:
        1-Crear usuario
        2-Login''');
      String respuesta = stdin.readLineSync() ?? "E";
      opcion = parsearOpcion(respuesta);
    } while (_resultadoNoValido (opcion));
    switch (opcion) {
      case 1:
        crearUsuario();
        break;
      case 2:
        login();
        stdout.writeln('Bienvenido ');
        break;
    }
  }

  int? parsearOpcion(String respuesta) {
    return int.tryParse(respuesta);
  }

  bool _resultadoNoValido ( var opcion) => opcion == null || opcion!= 1 && opcion!= 2;

  login() async {
    Usuario usuario = new Usuario();
    stdout.writeln('Introduce tu nombre de usuario');
    usuario.nombre = stdin.readLineSync();
    stdout.writeln('Introduce tu contraseña');
    usuario.password = stdin.readLineSync();
    var resultado = await usuario.loginUsuario();

    if (resultado == false) {
      stdout.writeln('Tu nombre de usuario o contraseña son incorrectos');
    }
  }

  crearUsuario() {
    Usuario usuario = new Usuario();
    stdout.writeln('Introduce un nombre de usuario');
    usuario.nombre = stdin.readLineSync();
    stdout.writeln('Introduce una contraseña');
    usuario.password = stdin.readLineSync();
    usuario.insertarUsuario();
  }

}
