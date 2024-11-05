import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '/features/portfolio/_portfolio.dart';
import '/config/_config.dart';

class HeaderTabsWidget extends StatelessWidget {
  const HeaderTabsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Wrap(
        spacing: 32,
        runSpacing: 32,
        alignment: WrapAlignment.center,
        crossAxisAlignment: WrapCrossAlignment.center,
        children: context
            .watch<PortfolioCubit>()
            .state
            .headerData
            .map(
              (e) => NeumorphismButton(
                height: 50,
                isHovered: e.isHovered,
                text: e.title,
                onTap: () => context.read<PortfolioCubit>().scrollToSection(e.widgetId),
                onHover: (bool val) => context.read<PortfolioCubit>().onButtonHover(e.id, val),
              ),
            )
            .toList(),
      ),
    );
  }
}
