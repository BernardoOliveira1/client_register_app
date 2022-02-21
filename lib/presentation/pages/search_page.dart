import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Pesquisa & Edição'),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 47,
              width: mediaQuery.size.width * (8 / 9),
              child: const SearchField(),
            ),
            ClientDataTable(),
          ],
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
  ClientDataTable({
    Key? key,
  }) : super(key: key);

//TODO: remove hard code
  final List<Map<String, String>> listOfColumns = [
    {"Matrícula": "2222", "CPF": "10000000000", "E-mail": "example1@gmail.com"},
    {"Matrícula": "3333", "CPF": "20000000000", "E-mail": "example2@gmail.com"},
    {"Matrícula": "4444", "CPF": "30000000000", "E-mail": "example3@gmail.com"},
    {"Matrícula": "2222", "CPF": "10000000000", "E-mail": "example1@gmail.com"},
    {"Matrícula": "3333", "CPF": "20000000000", "E-mail": "example2@gmail.com"},
    {"Matrícula": "4444", "CPF": "30000000000", "E-mail": "example3@gmail.com"},
    {"Matrícula": "2222", "CPF": "10000000000", "E-mail": "example1@gmail.com"},
    {"Matrícula": "3333", "CPF": "20000000000", "E-mail": "example2@gmail.com"},
    {"Matrícula": "4444", "CPF": "30000000000", "E-mail": "example3@gmail.com"},
    {"Matrícula": "2222", "CPF": "10000000000", "E-mail": "example1@gmail.com"},
    {"Matrícula": "3333", "CPF": "20000000000", "E-mail": "example2@gmail.com"},
    {"Matrícula": "4444", "CPF": "30000000000", "E-mail": "example3@gmail.com"},
    {"Matrícula": "2222", "CPF": "10000000000", "E-mail": "example1@gmail.com"},
    {"Matrícula": "3333", "CPF": "20000000000", "E-mail": "example2@gmail.com"},
    {"Matrícula": "4444", "CPF": "30000000000", "E-mail": "example3@gmail.com"},
    {"Matrícula": "2222", "CPF": "10000000000", "E-mail": "example1@gmail.com"},
    {"Matrícula": "3333", "CPF": "20000000000", "E-mail": "example2@gmail.com"},
    {"Matrícula": "4444", "CPF": "30000000000", "E-mail": "example3@gmail.com"},
    {"Matrícula": "2222", "CPF": "10000000000", "E-mail": "example1@gmail.com"},
    {"Matrícula": "3333", "CPF": "20000000000", "E-mail": "example2@gmail.com"},
    {"Matrícula": "4444", "CPF": "30000000000", "E-mail": "example3@gmail.com"},
    {"Matrícula": "2222", "CPF": "10000000000", "E-mail": "example1@gmail.com"},
    {"Matrícula": "3333", "CPF": "20000000000", "E-mail": "example2@gmail.com"},
    {"Matrícula": "4444", "CPF": "30000000000", "E-mail": "example3@gmail.com"},
    {"Matrícula": "2222", "CPF": "10000000000", "E-mail": "example1@gmail.com"},
    {"Matrícula": "3333", "CPF": "20000000000", "E-mail": "example2@gmail.com"},
    {"Matrícula": "4444", "CPF": "30000000000", "E-mail": "example3@gmail.com"},
    {"Matrícula": "2222", "CPF": "10000000000", "E-mail": "example1@gmail.com"},
    {"Matrícula": "3333", "CPF": "20000000000", "E-mail": "example2@gmail.com"},
    {"Matrícula": "4444", "CPF": "30000000000", "E-mail": "example3@gmail.com"},
    {"Matrícula": "2222", "CPF": "10000000000", "E-mail": "example1@gmail.com"},
    {"Matrícula": "3333", "CPF": "20000000000", "E-mail": "example2@gmail.com"},
    {"Matrícula": "4444", "CPF": "30000000000", "E-mail": "example3@gmail.com"},
    {"Matrícula": "2222", "CPF": "10000000000", "E-mail": "example1@gmail.com"},
    {"Matrícula": "3333", "CPF": "20000000000", "E-mail": "example2@gmail.com"},
    {"Matrícula": "4444", "CPF": "30000000000", "E-mail": "example3@gmail.com"},
    {"Matrícula": "2222", "CPF": "10000000000", "E-mail": "example1@gmail.com"},
    {"Matrícula": "3333", "CPF": "20000000000", "E-mail": "example2@gmail.com"},
    {"Matrícula": "4444", "CPF": "30000000000", "E-mail": "example3@gmail.com"},
    {"Matrícula": "2222", "CPF": "10000000000", "E-mail": "example1@gmail.com"},
    {"Matrícula": "3333", "CPF": "20000000000", "E-mail": "example2@gmail.com"},
    {"Matrícula": "4444", "CPF": "30000000000", "E-mail": "example3@gmail.com"},
    {"Matrícula": "2222", "CPF": "10000000000", "E-mail": "example1@gmail.com"},
    {"Matrícula": "3333", "CPF": "20000000000", "E-mail": "example2@gmail.com"},
    {"Matrícula": "4444", "CPF": "30000000000", "E-mail": "example3@gmail.com"},
    {"Matrícula": "2222", "CPF": "10000000000", "E-mail": "example1@gmail.com"},
    {"Matrícula": "3333", "CPF": "20000000000", "E-mail": "example2@gmail.com"},
    {"Matrícula": "4444", "CPF": "30000000000", "E-mail": "example3@gmail.com"},
    {"Matrícula": "2222", "CPF": "10000000000", "E-mail": "example1@gmail.com"},
    {"Matrícula": "3333", "CPF": "20000000000", "E-mail": "example2@gmail.com"},
    {"Matrícula": "4444", "CPF": "30000000000", "E-mail": "example3@gmail.com"},
    {"Matrícula": "2222", "CPF": "10000000000", "E-mail": "example1@gmail.com"},
    {"Matrícula": "3333", "CPF": "20000000000", "E-mail": "example2@gmail.com"},
    {"Matrícula": "4444", "CPF": "30000000000", "E-mail": "example3@gmail.com"},
    {"Matrícula": "2222", "CPF": "10000000000", "E-mail": "example1@gmail.com"},
    {"Matrícula": "3333", "CPF": "20000000000", "E-mail": "example2@gmail.com"},
    {"Matrícula": "4444", "CPF": "30000000000", "E-mail": "example3@gmail.com"},
    {"Matrícula": "2222", "CPF": "10000000000", "E-mail": "example1@gmail.com"},
    {"Matrícula": "3333", "CPF": "20000000000", "E-mail": "example2@gmail.com"},
    {"Matrícula": "4444", "CPF": "30000000000", "E-mail": "example3@gmail.com"},
    {"Matrícula": "2222", "CPF": "10000000000", "E-mail": "example1@gmail.com"},
    {"Matrícula": "3333", "CPF": "20000000000", "E-mail": "example2@gmail.com"},
    {"Matrícula": "4444", "CPF": "30000000000", "E-mail": "example3@gmail.com"},
  ];

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
            rows: listOfColumns
                .map(
                  ((element) => DataRow(
                        onLongPress: () {},
                        cells: <DataCell>[
                          DataCell(Text(
                            element["Matrícula"]!,
                            style: const TextStyle(
                              color: Colors.white,
                            ),
                          )),
                          DataCell(Text(
                            element["CPF"]!,
                            style: const TextStyle(
                              color: Colors.white,
                            ),
                          )),
                          DataCell(Text(
                            element["E-mail"]!,
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
