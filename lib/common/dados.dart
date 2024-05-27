import 'package:flutter/material.dart';

String usuario = 'Luana';
String localStudio = 'Jardim Camburi';
double faturamentoMEs = 7451;
int telaAtual = 1;

String baseUrl = 'http://localhost:3000/v1/';

const List<DropdownMenuEntry> formasPagamento = [
  DropdownMenuEntry(value: 0, label: 'Cartao de Credito'),
  DropdownMenuEntry(value: 1, label: 'Pix'),
  DropdownMenuEntry(value: 2, label: 'Cartao de Debito'),
  DropdownMenuEntry(value: 3, label: 'Dinheiro'),
  DropdownMenuEntry(value: 4, label: 'Permuta'),
];

const List<DropdownMenuEntry> categoriasFinanceirasDepesas = [
  DropdownMenuEntry(
    value: 0,
    label: 'Pagamento de Aluguel',
    trailingIcon: Icon(Icons.house),
  ),
  DropdownMenuEntry(
    value: 1,
    label: 'Luz/Internet',
    trailingIcon: Icon(Icons.house),
  ),
  DropdownMenuEntry(
    value: 2,
    label: 'Material de Trabalho',
    trailingIcon: Icon(Icons.design_services),
  ),
  DropdownMenuEntry(
    value: 3,
    label: 'Transporte',
    trailingIcon: Icon(Icons.car_crash_outlined),
  ),
  DropdownMenuEntry(
    value: 4,
    label: 'Empréstimo',
    trailingIcon: Icon(Icons.attach_money_rounded),
  ),
  DropdownMenuEntry(
    value: 5,
    label: 'Alimentação',
    trailingIcon: Icon(Icons.food_bank),
  ),
  DropdownMenuEntry(
    value: 6,
    label: 'Material de Limpeza',
    trailingIcon: Icon(Icons.clean_hands),
  ),
  DropdownMenuEntry(
    value: 7,
    label: 'Outros',
    trailingIcon: Icon(Icons.add_business),
  ),
];

const List<DropdownMenuEntry> categoriasFinanceirasReceitas = [
  DropdownMenuEntry(
    value: 0,
    label: 'Reposição Empréstimo',
    trailingIcon: Icon(Icons.attach_money_rounded),
  ),
  DropdownMenuEntry(
    value: 1,
    label: 'Pagamento de Aluguel',
    trailingIcon: Icon(Icons.house),
  ),
  DropdownMenuEntry(
    value: 2,
    label: 'Outros',
    trailingIcon: Icon(Icons.add_business),
  ),
];

const List<DropdownMenuEntry> diasMes = [
  DropdownMenuEntry(
    value: 1,
    label: '1',
  ),
  DropdownMenuEntry(
    value: 1,
    label: '2',
  ),
  DropdownMenuEntry(
    value: 1,
    label: '3',
  ),
  DropdownMenuEntry(
    value: 1,
    label: '4',
  ),
  DropdownMenuEntry(
    value: 1,
    label: '5',
  ),
  DropdownMenuEntry(
    value: 1,
    label: '6',
  ),
  DropdownMenuEntry(
    value: 1,
    label: '7',
  ),
  DropdownMenuEntry(
    value: 1,
    label: '8',
  ),
  DropdownMenuEntry(
    value: 1,
    label: '9',
  ),
  DropdownMenuEntry(
    value: 1,
    label: '10',
  ),
];
