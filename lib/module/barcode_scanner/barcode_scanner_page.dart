import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/appcolors.dart';

import '../../shared/themes/app_text_styles.dart';
import '../../shared/widgets/label_button/label_button.dart';

class BarcodeScannerPage extends StatefulWidget {
  const BarcodeScannerPage({Key? key}) : super(key: key);

  @override
  State<BarcodeScannerPage> createState() => _BarcodeScannerPageState();
}

class _BarcodeScannerPageState extends State<BarcodeScannerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Escaneie o codigo de barras do boleto",
          style: TextStyles.buttonBackground,
        ),
        leading: BackButton(color: AppColors.background),
      ),
      body: Column(
        children: [
          Expanded(child: Container(color: Colors.black)),
          Expanded(flex: 2, child: Container(color: Colors.transparent)),
          Expanded(child: Container(color: Colors.black)),
        ],
      ),
      bottomNavigationBar: Row(
        children: [
          Expanded(
            child: LabelButton(
              label: "Inserir codigo do boleto",
              onPress: () {},
            ),
          ),
          Expanded(
            child: LabelButton(
              label: "Adicionar da galeria",
              onPress: () {},
            ),
          ),
        ],
      ),
    );
  }
}
