import 'package:client_register_app/application/search_controller.dart';
import 'package:client_register_app/domain/client.dart';
import 'package:client_register_app/domain/core/failure.dart';
import 'package:client_register_app/domain/i_repository.dart';
import 'package:client_register_app/presentation/widgets/edition_dialog.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';

class ClientListPage extends StatelessWidget {
  const ClientListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final _controller =
        Get.put(ClientListController(GetIt.I.get<IClientRepository>()));
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Pesquisa & Edição'),
      ),
      body: Obx(
        () => SafeArea(
          child: _controller.clientList.value != null
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Obx(
                      () => ClientDataTable(
                        listOfClients: _controller.clientList.value!,
                      ),
                    ),
                  ],
                )
              : const Center(
                  child: CircularProgressIndicator(),
                ),
        ),
      ),
    );
  }
}

class ClientDataTable extends StatelessWidget {
  const ClientDataTable({
    Key? key,
    required this.listOfClients,
  }) : super(key: key);

  final List<Either<ClientFailure<dynamic>, Client>> listOfClients;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: SingleChildScrollView(
          child: DataTable(
            columns: const [
              DataColumn(
                label: Text(
                  'Matrícula',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              DataColumn(
                label: Text(
                  'CPF',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              DataColumn(
                label: Text(
                  'E-mail',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
            rows: listOfClients
                .map(
                  ((element) => DataRow(
                        onLongPress: () async {
                          element.fold(
                            (l) => null,
                            (r) async => await Get.dialog(
                              EditionDialog(
                                client: r,
                              ),
                            ),
                          );
                        },
                        cells: <DataCell>[
                          DataCell(Text(
                            element.fold((l) => 'erro',
                                (r) => r.registrationCode.getOrCrash()),
                            style: const TextStyle(
                              color: Colors.white,
                            ),
                          )),
                          DataCell(Text(
                            element.fold(
                                (l) => 'erro', (r) => r.cpf.getOrCrash()),
                            style: const TextStyle(
                              color: Colors.white,
                            ),
                          )),
                          DataCell(Text(
                            element.fold(
                                (l) => 'erro', (r) => r.email.getOrCrash()),
                            style: const TextStyle(
                              color: Colors.white,
                            ),
                          )),
                        ],
                      )),
                )
                .toList(),
          ),
        ),
      ),
    );
  }
}
