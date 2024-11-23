import 'package:flutter/material.dart';
import 'package:gymfit_projeto/exercicio_page.dart';
import 'perfil_page.dart';

class AlimentacaoPage extends StatelessWidget {
  final String objetivo;

  const AlimentacaoPage({Key? key, required this.objetivo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Exemplo com uma refeição para simplificação
     List<String> receitas;
    if (objetivo == 'Melhorar condicionamento') {
      receitas = [
        'Opção 1\n'
            '\n'
            'Café da manhã\n'
            '    • 1 tapioca média (30g) recheada com 1 colher de sopa de pasta de amendoim e banana em rodelas.\n'
            '    • 1 copo (200ml) de suco de laranja natural.\n'
            'Lanche da manhã\n'
            '    • 1 maçã ou pera.\n'
            '    • 1 punhado de amêndoas (10 unidades).\n'
            '\n'
            'Almoço\n'
            '    • 100g de peito de frango grelhado.\n'
            '    • 1 concha média de arroz integral.\n'
            '    • 1 porção (100g) de brócolis refogado com alho.\n'
            '    • 1 colher de sopa de azeite extravirgem para temperar.\n'
            '\n'
            'Lanche da tarde\n'
            '    • 1 fatia de pão integral com 1 fatia de queijo branco.\n'
            '    • 1 xícara de chá-verde (opcional).\n'
            '\n'
            'Jantar\n'
            '    • Omelete com 3 claras e 1 gema, espinafre e tomate.\n'
            '    • 1 fatia de pão integral.\n'
            '    • Salada de folhas verdes com azeite e limão.\n'
            '\n'
            'Ceia\n'
            '    • 1 iogurte natural com 1 colher de sobremesa de mel.\n',
        'Opção 2\n'
            '\n'
            'Café da manhã\n'
            '    • 1 fatia de pão integral com abacate amassado e chia.\n'
            '    • 1 ovo cozido.\n'
            '    • 1 copo (200ml) de suco de maracujá com pouco açúcar.\n'
            '\n'
            'Lanche da manhã\n'
            '    • 1 banana.\n'
            '    • 1 colher de sopa de pasta de amendoim (como acompanhamento da banana).\n'
            '\n'
            'Almoço\n'
            '    • 100g de filé de peixe grelhado (como salmão ou tilápia).\n'
            '    • 1 concha de quinoa.\n'
            '    • 1 porção (100g) de abobrinha grelhada.\n'
            '    • 1 colher de sobremesa de linhaça dourada.\n'
            '\n'
            'Lanche da tarde\n'
            '    • 1 punhado de castanhas-do-pará (5 unidades).\n'
            '    • 1 taça de salada de frutas com chia.\n'
            '\n'
            'Jantar\n'
            '    • 1 prato fundo de sopa de legumes com frango desfiado (cenoura, abóbora, chuchu).\n'
            '    • 1 fatia de torrada integral.\n'
            '\n'
            'Ceia\n'
            '    • 1 xícara de chá de camomila com 2 quadradinhos de chocolate 70% cacau.\n',
        'Opção 3\n'
            '\n'
            'Café da manhã\n'
            '    • 1 copo de vitamina de frutas (200ml de leite de amêndoas, 1 banana, 1 colher de aveia e 1 colher de cacau em pó).\n'
            '    • 1 fatia de pão integral com ricota.\n'
            'Lanche da manhã\n'
            '    • 1 laranja.\n'
            '    • 1 punhado de nozes (5 unidades).\n'
            '\n'
            'Almoço\n'
            '    • 120g de carne vermelha magra grelhada (como patinho).\n'
            '    • 1 concha de purê de batata-doce.\n'
            '    • Salada colorida (alface, cenoura ralada, beterraba e tomate) temperada com azeite e vinagre balsâmico.\n'
            '\n'
            'Lanche da tarde\n'
            '    • 1 torrada integral com creme de cottage e ervas.\n'
            '    • 1 xícara de chá branco (opcional).\n'
            '\n'
            'Jantar\n'
            '    • 1 prato fundo de salada de grão-de-bico com atum, cenoura e salsinha.\n'
            '    • 1 fatia de pão integral tostado.\n'
            '\n'
            'Ceia\n'
            '    • 1 copo (200ml) de leite morno com canela.\n',
      ];
    } else if (objetivo == 'Ganhar massa muscular') {
      receitas = [
        'Opção 1\n'
            '\n'
            'Café da manhã\n'
            '    • 2 ovos mexidos com 1 fatia de queijo muçarela.\n'
            '    • 2 fatias de pão integral com abacate amassado.\n'
            '    • 1 copo (300ml) de vitamina de banana, aveia (30g) e whey protein (1 scoop).\n'
            '\n'
            'Lanche da manhã\n'
            '    • 1 barra de proteína (ou 100g de iogurte grego com mel e granola).\n'
            '    • 1 fruta (maçã ou pera).\n'
            '\n'
            'Almoço\n'
            '    • 150g de peito de frango grelhado.\n'
            '    • 1 concha grande de arroz integral.\n'
            '    • 1 concha pequena de feijão preto.\n'
            '    • 1 porção de legumes no vapor (brócolis, cenoura e abobrinha).\n'
            '    • 1 colher de sopa de azeite de oliva para temperar.\n'
            '\n'
            'Lanche da tarde\n'
            '    • 1 sanduíche com pão integral, atum e folhas de espinafre.\n'
            '    • 1 copo (200ml) de suco de laranja natural.\n'
            '\n'
            'Jantar\n'
            '    • 150g de carne vermelha magra (patinho ou alcatra grelhada).\n'
            '    • 1 batata-doce média assada.\n'
            '    • Salada de folhas verdes com tomate, cenoura e azeite.\n'
            '\n'
            'Ceia\n'
            '    • 1 copo (200ml) de leite integral com 1 scoop de caseína ou whey protein.\n'
            '    • 1 punhado de amêndoas (10 unidades).\n',
        'Opção 2\n'
            '\n'
            'Café da manhã\n'
            '    • 3 ovos cozidos ou mexidos.\n'
            '    • 1 pão francês integral com 1 fatia de queijo branco.\n'
            '    • 1 copo (300ml) de vitamina com leite, mamão, aveia e mel.\n'
            '\n'
            'Lanche da manhã\n'
            '    • 1 fatia de pão integral com pasta de amendoim.\n'
            '    • 1 banana.\n'
            '\n'
            'Almoço\n'
            '    • 120g de salmão grelhado.\n'
            '    • 1 concha média de quinoa ou arroz integral.\n'
            '    • 1 porção de legumes grelhados (berinjela, abobrinha e pimentão).\n'
            '    • 1 colher de sobremesa de azeite.\n'
            '\n'
            'Lanche da tarde\n'
            '    • 1 batata-doce média cozida.\n'
            '    • 1 scoop de whey protein com água ou leite.\n'
            '\n'
            'Jantar\n'
            '    • Omelete com 4 claras, 1 gema, espinafre e queijo parmesão ralado.\n'
            '    • 1 porção de purê de mandioquinha.\n'
            '    • Salada verde com azeite e limão.\n'
            '\n'
            'Ceia\n'
            '    • 1 iogurte natural com chia e granola.\n'
            '    • 2 quadradinhos de chocolate amargo (70% cacau).\n',
        'Opção 3\n'
            '\n'
            'Café da manhã\n'
            '    • 1 tapioca média (30g) recheada com frango desfiado e queijo cottage.\n'
            '    • 1 copo (300ml) de vitamina de abacate com whey protein e leite.\n'
            '\n'
            'Lanche da manhã\n'
            '    • 1 fruta (mamão ou maçã).\n'
            '    • 1 punhado de castanhas-do-pará (5 unidades).\n'
            '\n'
            'Almoço\n'
            '    • 150g de carne de frango ou peru.\n'
            '    • 1 concha grande de arroz integral com lentilha.\n'
            '    • 1 porção de salada de grão-de-bico com cenoura e salsinha.\n'
            '    • 1 colher de sopa de azeite para temperar.\n'
            '\n'
            'Lanche da tarde\n'
            '    • 1 wrap integral recheado com frango desfiado, ricota e espinafre.\n'
            '    • 1 copo (200ml) de suco de melancia.\n'
            '\n'
            'Jantar\n'
            '    • 150g de filé de tilápia grelhado.\n'
            '    • 1 batata-doce pequena cozida.\n'
            '    • Salada de folhas verdes com pepino, tomate e azeite.\n'
            '\n'
            'Ceia\n'
            '    • 1 copo de leite integral com 1 scoop de caseína ou whey protein.\n'
            '    • 1 punhado de nozes (5 unidades).\n',
      ];
    } else if (objetivo == 'Perder peso') {
      receitas = [
        'Opção 1\n'
            '\n'
            'Café da manhã\n'
            '\n'
            '    • 1 ovo cozido.\n'
            '    • 1 fatia de pão integral com 1 colher de chá de pasta de abacate.\n'
            '    • 1 xícara de café sem açúcar ou chá verde.\n'
            '\n'
            'Lanche da manhã\n'
            '    • 1 fruta (como maçã ou pera).\n'
            '    • 5 amêndoas.\n'
            '\n'
            'Almoço\n'
            '    • 100g de filé de frango grelhado.\n'
            '    • 2 colheres de sopa de arroz integral.\n'
            '    • 1 porção de salada (alface, tomate, cenoura e pepino) temperada com azeite e limão.\n'
            '    • 1 colher de sopa de sementes de chia ou linhaça na salada.\n'
            '\n'
            'Lanche da tarde\n'
            '    • 1 iogurte natural desnatado com 1 colher de chá de mel.\n'
            '\n'
            'Jantar\n'
            '    • Omelete com 3 claras e 1 gema, espinafre e 1 colher de chá de queijo parmesão ralado.\n'
            '    • Salada de folhas verdes com azeite e vinagre.\n'
            '\n'
            'Ceia\n'
            '    • 1 xícara de chá de camomila ou erva-cidreira.\n',
        'Opção 2\n'
            '\n'
            'Café da manhã\n'
            '    • 1 copo (200ml) de vitamina de frutas com leite vegetal (banana, morango e 1 colher de chá de chia).\n'
            '    • 1 fatia de pão integral com 1 colher de chá de pasta de amendoim natural.\n'
            '\n'
            'Lanche da manhã\n'
            '    • 1 punhado de nozes (5 unidades).\n'
            '    • 1 copo de chá-verde (opcional).\n'
            '\n'
            'Almoço\n'
            '    • 100g de filé de peixe grelhado (como tilápia ou salmão).\n'
            '    • 3 colheres de sopa de purê de batata-doce.\n'
            '    • 1 porção de legumes no vapor (brócolis, abobrinha e cenoura).\n'
            '\n'
            'Lanche da tarde\n'
            '    • 1 fatia de pão integral com queijo cottage e ervas.\n'
            '\n'
            'Jantar\n'
            '    • 1 prato fundo de sopa de abóbora com frango desfiado.\n'
            '    • 1 fatia de pão integral tostado.\n'
            '\n'
            'Ceia\n'
            '    • 1 iogurte grego zero açúcar com canela.\n',
        'Opção 3\n'
            '\n'
            'Café da manhã\n'
            '    • 1 tapioca média (30g) recheada com 1 colher de chá de pasta de amendoim e 2 rodelas de banana.\n'
            '    • 1 xícara de chá preto com gotas de limão.\n'
            '\n'
            'Lanche da manhã\n'
            '\n'
            '    • 1 fruta (como kiwi ou laranja).\n'
            '    • 5 castanhas-do-pará.\n'
            '\n'
            'Almoço\n'
            '\n'
            '    • 100g de peito de peru grelhado.\n'
            '    • 1 concha média de quinoa.\n'
            '    • 1 salada colorida (folhas verdes, tomate-cereja, pepino, cenoura) com 1 colher de sopa de azeite.\n'
            '\n'
            'Lanche da tarde\n'
            '\n'
            '    • 1 smoothie de frutas vermelhas com leite de amêndoas (200ml) e 1 colher de chá de whey protein.\n'
            '\n'
            'Jantar\n'
            '\n'
            '    • 1 omelete com 2 ovos, cogumelos e espinafre.\n'
            '    • 1 porção pequena de salada de folhas verdes com tomate.\n'
            '\n'
            'Ceia\n'
            '\n'
            '    • 1 copo (200ml) de leite vegetal com canela em pó.\n',
      ];
    } else {
      receitas = ['Receita Padrão 1', 'Receita Padrão 2'];
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: Colors.white,
          onPressed: () => Navigator.pop(context, false),
        ),
        title: Text("Alimentação - $objetivo"),
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 16,
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.indigo,const Color.fromARGB(255, 0, 5, 55)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: ListView.builder(
          itemCount: receitas.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: RichText(
                text: TextSpan(
                  children: [
                    for (var line in receitas[index].split('\n'))
                      if (line.contains('Opção') || line.contains('Café da manhã') || line.contains('Almoço') || line.contains('Jantar') || line.contains('Lanche da manhã') || line.contains('Lanche da tarde') || line.contains('Ceia'))
                        TextSpan(
                          text: line + '\n',
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        )
                      else ...[
                        if (line.contains('•'))
                          WidgetSpan(
                            alignment: PlaceholderAlignment.middle,
                            child: Text(
                              '• ',
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 16),
                            ),
                          ),
                        TextSpan(
                          text: line.replaceAll('•', '').trim() + '\n',
                          style: const TextStyle(
                              color: Colors.white, fontSize: 16),
                        ),
                      ],
                  ],
                ),
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.fitness_center),
            label: 'Exercício',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.restaurant),
            label: 'Alimentação',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Perfil',
          ),
        ],
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        backgroundColor: Colors.black,
        onTap: (index) {
          if (index == 0) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ExercicioPage(
                  nivelCondicionamento: 2.0, // Replace with actual data
                  frequencia: 3.0, // Replace with actual data
                  objetivo: objetivo,
                  nivelCondicionamentoTexto: 'Intermediário', // Replace with actual data
                ),
              ),
            );
          } else if (index == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PerfilPage(
                  nome: 'Nome Exemplo', // Substitua pelos dados reais
                  idade: 25, // Substitua pelos dados reais
                  sexo: 'Masculino', // Substitua pelos dados reais
                  peso: 70.0, // Substitua pelos dados reais
                  altura: 1.75, // Substitua pelos dados reais
                  objetivo: objetivo, // Use o objetivo atual
                ),
              ),
            );
          }
        },
      ),
    );
  }
}