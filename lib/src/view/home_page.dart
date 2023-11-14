import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(
                border: Border(
                  right: BorderSide(
                    color: Colors.grey[300]!,
                    width: 0.5,
                  ),
                ),
              ),
              child: Column(
                children: [
                  Container(
                    height: 80,
                    color: const Color(0xff820ad1),
                    child: Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 18, right: 18),
                          height: 50,
                          width: 50,
                          decoration: const BoxDecoration(
                              color: Color(0xff9436e1), shape: BoxShape.circle),
                          child: const Icon(
                            Icons.person,
                            color: Colors.white,
                          ),
                        ),
                        const Text(
                          'Olá, Steffano',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 40, left: 18),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const TextLine(
                          icon: Icons.arrow_downward,
                          iconColor: Color(0xff820ad1),
                          text: 'Transações',
                          style: TextStyle(
                            color: Color(0xff820ad1),
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 24, left: 16),
                          child: Row(
                            children: [
                              Text(
                                'Conta',
                                style: TextStyle(
                                  color: Colors.grey[400],
                                  fontSize: 14,
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(left: 12),
                                padding: const EdgeInsets.all(3),
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(6)),
                                  color: Colors.grey[300],
                                ),
                                child: const Text(
                                  'Em breve',
                                  style: TextStyle(
                                      color: Colors.black54, fontSize: 12),
                                ),
                              )
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 24, left: 16),
                          child: Text(
                            'Cartão de crédito',
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(),
          )
        ],
      ),
    );
  }
}

class TextLine extends StatelessWidget {
  const TextLine(
      {super.key,
      required this.icon,
      required this.iconColor,
      required this.text,
      required this.style});

  final IconData icon;
  final Color iconColor;
  final String text;
  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 18),
          child: Icon(
            icon,
            color: iconColor,
          ),
        ),
        Text(text, style: style)
      ],
    );
  }
}
