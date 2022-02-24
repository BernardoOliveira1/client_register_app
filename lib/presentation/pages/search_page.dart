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

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final _controller =
        Get.put(SearchController(GetIt.I.get<IClientRepository>()));
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
                    Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(
                            mediaQuery.size.width * (0.5 / 9),
                            0,
                            mediaQuery.size.width * (0.5 / 9),
                            0),
                        child: SizedBox(
                          height: 50,
                          width: mediaQuery.size.width * (8 / 9),
                          child: const SearchField(),
                        ),
                      ),
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

class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 0,
            color: Color(0xff00384C),
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(23.5),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 0, color: Colors.transparent),
          borderRadius: BorderRadius.all(
            Radius.circular(23.5),
          ),
        ),
        filled: true,
        fillColor: Color(0xffF1F3F5),
        contentPadding: EdgeInsets.all(0),
        hintText: "Pesquisar",
        hintStyle: TextStyle(
          fontSize: 14,
          height: 0,
          color: Color(0xff5E6770),
        ),
        prefixIcon: Icon(
          CupertinoIcons.search,
          size: 13.33,
          color: Color(0xff5E6770),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(width: 0, color: Colors.transparent),
          borderRadius: BorderRadius.all(
            Radius.circular(23.5),
          ),
        ),
      ),
      controller: null,
      onChanged: null,
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
