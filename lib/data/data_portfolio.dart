class DataProjeto {
  final String? name;
  final String? description;
  final String? image;
  final String? url;
  final List<String>? skills;

  DataProjeto({this.name, this.description, this.image, this.url, this.skills});
}

List<DataProjeto> PROJECTS = [
  DataProjeto(
    name: 'Leitor de Código de Barras',
    description:
        'Aplicativo desenvolvido para realização de invetarios de forma local atraves do leitor de codigo de barras.',
    image:
        'https://user-images.githubusercontent.com/39202278/147521826-2eb279c6-044d-4e47-b0f6-ef07cf55a4f6.gif',
    url: '',
    skills: [
      'Dart',
      'Php',
      'Sql',
      'Firebird',
      'Flutter',
      'Git',
      'Provider',
      'Shared_preferences'
    ],
  ),
  DataProjeto(
    name: 'Cobranças',
    description:
        'Aplicativo desenvolvido para realização de cobranças, a rota de melhor atendimento sera calculada de acordo com a localização atual do usuario.',
    image:
        'https://user-images.githubusercontent.com/39202278/147523465-94dfdb2f-e413-4f35-9aef-b092227095d6.gif',
    url: '',
    skills: [
      'Dart',
      'Php',
      'Sql',
      'SDK google',
      'Flutter',
      'Git',
      'API openrouteservice',
      'Localização em segundo plano',
      'Get_iT',
      'Mobx'
    ],
  ),
  DataProjeto(
    name: 'Gerenciador de Vendas',
    description:
        'Aplicativo desenvolvido para gerenciamento de vendas de forma offline e online, onde é possivel criar orçamentos, acompanhar pedidos e vendas, gerar relatorios graficamente e imprimir.',
    image:
        'https://user-images.githubusercontent.com/39202278/147523129-3b318099-71f1-46d3-922a-64cbb2ca9b9e.gif',
    url: '',
    skills: [
      'Dart',
      'Php',
      'Sql',
      'Sqlite'
          'Mysql',
      'Flutter',
      'Git',
      'Provider',
      'Reursos nativo da plataforma android',
    ],
  ),
];
