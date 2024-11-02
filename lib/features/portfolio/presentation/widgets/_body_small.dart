import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '/core/_core.dart';
import '/config/_config.dart';
import '/features/_features.dart';

class PortfolioBodySmall extends StatelessWidget {
  const PortfolioBodySmall({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24),
      child: SingleChildScrollView(
        controller: context.read<PortfolioCubit>().scrollController,
        child: Column(
          children: [
            PortfolioEndDrawer(key: context.read<PortfolioCubit>().sectionKeys[0]),
            TSize.s16.toHeight,
            WhoIAmSmallLayout(key: context.read<PortfolioCubit>().sectionKeys[1]),
            TSize.s143.toHeight,
            AboutMeWidget(key: context.read<PortfolioCubit>().sectionKeys[2]),
            TSize.s143.toHeight,
            ContactMeWidget(key: context.read<PortfolioCubit>().sectionKeys[3]),
            TSize.s143.toHeight,
          ],
        ),
      ),
    );
  }
}
