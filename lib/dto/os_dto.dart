import 'package:os_manager/datebase/sqlite/dao/cliente_dao_impl.dart';
import 'package:os_manager/dto/cliente_dto.dart';

class OSDTO {
  final dynamic id;
  final String horario;
  final String data;
  final ClienteDTO clienteDTO;

  OSDTO(
      {this.id,
      required this.horario,
      required this.data,
      required this.clienteDTO});

  @override
  String toString() {
    return '''
      $id
      $horario
      $data
    ''';
  }

  static Future<OSDTO> toDTO(Map<dynamic, dynamic> os) async {
    ClienteDTO cliente = await ClienteDAOImpl().buscarPorID(os['cliente_id']);
    return OSDTO(
      id: os['id'],
      horario: os['horario'],
      data: os['data'],
      clienteDTO: cliente,
    );
  }
}
