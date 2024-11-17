import 'package:flutter/material.dart';

class AlimentacaoPage extends StatelessWidget {
  final String objetivo;

  const AlimentacaoPage({Key? key, required this.objetivo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Determinar as receitas com base no objetivo
    List<String> receitas;
    if (objetivo == 'Melhorar condicionamento') {
      receitas = [
        'Opção 1\n'
            'Café da manhã\n'
            '    • 1 tapioca média (30g) recheada com 1 colher de sopa de pasta de amendoim e banana em rodelas.\n'
            '    • 1 copo (200ml) de suco de laranja natural.\n'
            'Lanche da manhã\n'
            '    • 1 maçã ou pera.\n'
            '    • 1 punhado de amêndoas (10 unidades).\n'
            'Almoço\n'
            '    • 100g de peito de frango grelhado.\n'
            '    • 1 concha média de arroz integral.\n'
            '    • 1 porção (100g) de brócolis refogado com alho.\n'
            '    • 1 colher de sopa de azeite extravirgem para temperar.\n'
            'Lanche da tarde\n'
            '    • 1 fatia de pão integral com 1 fatia de queijo branco.\n'
            '    • 1 xícara de chá-verde (opcional).\n'
            'Jantar\n'
            '    • Omelete com 3 claras e 1 gema, espinafre e tomate.\n'
            '    • 1 fatia de pão integral.\n'
            '    • Salada de folhas verdes com azeite e limão.\n'
            'Ceia\n'
            '    • 1 iogurte natural com 1 colher de sobremesa de mel.\n',
        'Opção 2\n'
            'Café da manhã\n'
            '    • 1 fatia de pão integral com abacate amassado e chia.\n'
            '    • 1 ovo cozido.\n'
            '    • 1 copo (200ml) de suco de maracujá com pouco açúcar.\n'
            'Lanche da manhã\n'
            '    • 1 banana.\n'
            '    • 1 colher de sopa de pasta de amendoim (como acompanhamento da banana).\n'
            'Almoço\n'
            '    • 100g de filé de peixe grelhado (como salmão ou tilápia).\n'
            '    • 1 concha de quinoa.\n'
            '    • 1 porção (100g) de abobrinha grelhada.\n'
            '    • 1 colher de sobremesa de linhaça dourada.\n'
            'Lanche da tarde\n'
            '    • 1 punhado de castanhas-do-pará (5 unidades).\n'
            '    • 1 taça de salada de frutas com chia.\n'
            'Jantar\n'
            '    • 1 prato fundo de sopa de legumes com frango desfiado (cenoura, abóbora, chuchu).\n'
            '    • 1 fatia de torrada integral.\n'
            'Ceia\n'
            '    • 1 xícara de chá de camomila com 2 quadradinhos de chocolate 70% cacau.\n',
        'Opção 3\n'
            'Café da manhã\n'
            '    • 1 copo de vitamina de frutas (200ml de leite de amêndoas, 1 banana, 1 colher de aveia e 1 colher de cacau em pó).\n'
            '    • 1 fatia de pão integral com ricota.\n'
            'Lanche da manhã\n'
            '    • 1 laranja.\n'
            '    • 1 punhado de nozes (5 unidades).\n'
            'Almoço\n'
            '    • 120g de carne vermelha magra grelhada (como patinho).\n'
            '    • 1 concha de purê de batata-doce.\n'
            '    • Salada colorida (alface, cenoura ralada, beterraba e tomate) temperada com azeite e vinagre balsâmico.\n'
            'Lanche da tarde\n'
            '    • 1 torrada integral com creme de cottage e ervas.\n'
            '    • 1 xícara de chá branco (opcional).\n'
            'Jantar\n'
            '    • 1 prato fundo de salada de grão-de-bico com atum, cenoura e salsinha.\n'
            '    • 1 fatia de pão integral tostado.\n'
            'Ceia\n'
            '    • 1 copo (200ml) de leite morno com canela.\n',
      ];
    } else if (objetivo == 'Ganhar massa muscular') {
      receitas = [
        'Opção 1\n'
            'Café da manhã\n'
            '    • 2 ovos mexidos com 1 fatia de queijo muçarela.\n'
            '    • 2 fatias de pão integral com abacate amassado.\n'
            '    • 1 copo (300ml) de vitamina de banana, aveia (30g) e whey protein (1 scoop).\n'
            'Lanche da manhã\n'
            '    • 1 barra de proteína (ou 100g de iogurte grego com mel e granola).\n'
            '    • 1 fruta (maçã ou pera).\n'
            'Almoço\n'
            '    • 150g de peito de frango grelhado.\n'
            '    • 1 concha grande de arroz integral.\n'
            '    • 1 concha pequena de feijão preto.\n'
            '    • 1 porção de legumes no vapor (brócolis, cenoura e abobrinha).\n'
            '    • 1 colher de sopa de azeite de oliva para temperar.\n'
            'Lanche da tarde\n'
            '    • 1 sanduíche com pão integral, atum e folhas de espinafre.\n'
            '    • 1 copo (200ml) de suco de laranja natural.\n'
            'Jantar\n'
            '    • 150g de carne vermelha magra (patinho ou alcatra grelhada).\n'
            '    • 1 batata-doce média assada.\n'
            '    • Salada de folhas verdes com tomate, cenoura e azeite.\n'
            'Ceia\n'
            '    • 1 copo (200ml) de leite integral com 1 scoop de caseína ou whey protein.\n'
            '    • 1 punhado de amêndoas (10 unidades).\n',
        'Opção 2\n'
            'Café da manhã\n'
            '    • 3 ovos cozidos ou mexidos.\n'
            '    • 1 pão francês integral com 1 fatia de queijo branco.\n'
            '    • 1 copo (300ml) de vitamina com leite, mamão, aveia e mel.\n'
            'Lanche da manhã\n'
            '    • 1 fatia de pão integral com pasta de amendoim.\n'
            '    • 1 banana.\n'
            'Almoço\n'
            '    • 120g de salmão grelhado.\n'
            '    • 1 concha média de quinoa ou arroz integral.\n'
            '    • 1 porção de legumes grelhados (berinjela, abobrinha e pimentão).\n'
            '    • 1 colher de sobremesa de azeite.\n'
            'Lanche da tarde\n'
            '    • 1 batata-doce média cozida.\n'
            '    • 1 scoop de whey protein com água ou leite.\n'
            'Jantar\n'
            '    • Omelete com 4 claras, 1 gema, espinafre e queijo parmesão ralado.\n'
            '    • 1 porção de purê de mandioquinha.\n'
            '    • Salada verde com azeite e limão.\n'
            'Ceia\n'
            '    • 1 iogurte natural com chia e granola.\n'
            '    • 2 quadradinhos de chocolate amargo (70% cacau).\n',
        'Opção 3\n'
            'Café da manhã\n'
            '    • 1 tapioca média (30g) recheada com frango desfiado e queijo cottage.\n'
            '    • 1 copo (300ml) de vitamina de abacate com whey protein e leite.\n'
            'Lanche da manhã\n'
            '    • 1 fruta (mamão ou maçã).\n'
            '    • 1 punhado de castanhas-do-pará (5 unidades).\n'
            'Almoço\n'
            '    • 150g de carne de frango ou peru.\n'
            '    • 1 concha grande de arroz integral com lentilha.\n'
            '    • 1 porção de salada de grão-de-bico com cenoura e salsinha.\n'
            '    • 1 colher de sopa de azeite para temperar.\n'
            'Lanche da tarde\n'
            '    • 1 wrap integral recheado com frango desfiado, ricota e espinafre.\n'
            '    • 1 copo (200ml) de suco de melancia.\n'
            'Jantar\n'
            '    • 150g de filé de tilápia grelhado.\n'
            '    • 1 batata-doce pequena cozida.\n'
            '    • Salada de folhas verdes com pepino, tomate e azeite.\n'
            'Ceia\n'
            '    • 1 copo de leite integral com 1 scoop de caseína ou whey protein.\n'
            '    • 1 punhado de nozes (5 unidades).\n',
      ];
    } else if (objetivo == 'Perder peso') {
      receitas = [
        'Opção 1\n'
            'Café da manhã\n'
            '    • 1 ovo cozido.\n'
            '    • 1 fatia de pão integral com 1 colher de chá de pasta de abacate.\n'
            '    • 1 xícara de café sem açúcar ou chá verde.\n'
            'Lanche da manhã\n'
            '    • 1 fruta (como maçã ou pera).\n'
            '    • 5 amêndoas.\n'
            'Almoço\n'
            '    • 100g de filé de frango grelhado.\n'
            '    • 2 colheres de sopa de arroz integral.\n'
            '    • 1 porção de salada (alface, tomate, cenoura e pepino) temperada com azeite e limão.\n'
            '    • 1 colher de sopa de sementes de chia ou linhaça na salada.\n'
            'Lanche da tarde\n'
            '    • 1 iogurte natural desnatado com 1 colher de chá de mel.\n'
            'Jantar\n'
            '    • Omelete com 3 claras e 1 gema, espinafre e 1 colher de chá de queijo parmesão ralado.\n'
            '    • Salada de folhas verdes com azeite e vinagre.\n'
            'Ceia\n'
            '    • 1 xícara de chá de camomila ou erva-cidreira.\n',
        'Opção 2\n'
            'Café da manhã\n'
            '    • 1 copo (200ml) de vitamina de frutas com leite vegetal (banana, morango e 1 colher de chá de chia).\n'
            '    • 1 fatia de pão integral com 1 colher de chá de pasta de amendoim natural.\n'
            'Lanche da manhã\n'
            '    • 1 punhado de nozes (5 unidades).\n'
            '    • 1 copo de chá-verde (opcional).\n'
            'Almoço\n'
            '    • 100g de filé de peixe grelhado (como tilápia ou salmão).\n'
            '    • 3 colheres de sopa de purê de batata-doce.\n'
            '    • 1 porção de legumes no vapor (brócolis, abobrinha e cenoura).\n'
            'Lanche da tarde\n'
            '    • 1 fatia de pão integral com queijo cottage e ervas.\n'
            'Jantar\n'
            '    • 1 prato fundo de sopa de abóbora com frango desfiado.\n'
            '    • 1 fatia de pão integral tostado.\n'
            'Ceia\n'
            '    • 1 iogurte grego zero açúcar com canela.\n',
        'Opção 3\n'
            'Café da manhã\n'
            '    • 1 tapioca média (30g) recheada com 1 colher de chá de pasta de amendoim e 2 rodelas de banana.\n'
            '    • 1 xícara de chá preto com gotas de limão.\n'
            'Lanche da manhã\n'
            '    • 1 fruta (como kiwi ou laranja).\n'
            '    • 5 castanhas-do-pará.\n'
            'Almoço\n'
            '    • 100g de peito de peru grelhado.\n'
            '    • 1 concha média de quinoa.\n'
            '    • 1 salada colorida (folhas verdes, tomate-cereja, pepino, cenoura) com 1 colher de sopa de azeite.\n'
            'Lanche da tarde\n'
            '    • 1 smoothie de frutas vermelhas com leite de amêndoas (200ml) e 1 colher de chá de whey protein.\n'
            'Jantar\n'
            '    • 1 omelete com 2 ovos, cogumelos e espinafre.\n'
            '    • 1 porção pequena de salada de folhas verdes com tomate.\n'
            'Ceia\n'
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
            colors: [Colors.grey, Colors.black87],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: ListView.builder(
          itemCount: receitas.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Stack(
                children: [
                  Text(
                    receitas[index],
                    style: TextStyle(
                      fontSize: 16,
                      foreground: Paint()
                        ..style = PaintingStyle.stroke
                        ..strokeWidth = 1
                        ..color = Colors.black,
                    ),
                  ),
                  Text(
                    receitas[index],
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
