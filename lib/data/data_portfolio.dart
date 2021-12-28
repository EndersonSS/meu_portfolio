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
    image: 'gifs/projeto_barcode.gif',
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
    image: 'gifs/projeto_cobrancas.gif',
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
    name: 'Cobranças',
    description:
        'Aplicativo desenvolvido para gerenciamento de vendas de forma offline e online, onde é possivel criar orçamentos, acompanhar pedidos e vendas, gerar relatorios graficamente e imprimir.',
    image: 'gifs/projeto_vendedor.gif',
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
      'Reursos nativo da plataforma android para armazenamento de imagens em cache',
    ],
  ),
];
