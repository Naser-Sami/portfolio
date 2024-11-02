import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '/core/_core.dart';
import '/config/_config.dart';
import '/features/portfolio/_portfolio.dart';

class PortfolioBodyMedium extends StatelessWidget {
  const PortfolioBodyMedium({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 48.0),
      child: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
        child: SingleChildScrollView(
          controller: context.read<PortfolioCubit>().scrollController,
          child: Column(
            children: [
              TSize.s48.toHeight,
              HeaderTabsWidget(key: context.read<PortfolioCubit>().sectionKeys[0]),
              TSize.s96.toHeight,
              WhoIAmMediumLayout(key: context.read<PortfolioCubit>().sectionKeys[1]),
              TSize.s143.toHeight,
              AboutMeWidget(key: context.read<PortfolioCubit>().sectionKeys[2]), // Index 2
              TSize.s143.toHeight,
              ContactMeWidget(key: context.read<PortfolioCubit>().sectionKeys[3]), // Index 3
              TSize.s143.toHeight,
            ],
          ),
        ),
      ),
    );
  }
}
