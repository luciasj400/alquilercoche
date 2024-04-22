import 'package:mysql1/mysql1.dart';

class Vehiculo{
  int? idvehiculo;
  String? nombre;
  String? ubicacion;
  String? fechaAlquiler;
  String? tipoVehiculo;
  int? capacidad;

Vehiculo();

 Vehiculo.fromMap(ResultRow map){
    this.idvehiculo= map['idvehiculo'];
    this.nombre = map['nombre'];
    this.ubicacion= map ['ubicacion'];
    this.fechaAlquiler = map ['fechaAlquiler'];
    this.tipoVehiculo = map ['tipoVehiculo'];
    this.capacidad = map ['capacidad'];
}



}