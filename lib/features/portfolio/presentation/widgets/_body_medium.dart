import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '/core/_core.dart';
import '/config/_config.dart';
import '/features/portfolio/_portfolio.dart';

class PortfolioBodyMedium extends StatelessWidget {
  const PortfolioBodyMedium({super.key});

  @override
  Widget build(BuildContext context) {
    final widthCondition = MediaQuery.of(context).size.width < 1000;
    final cubit = context.read<PortfolioCubit>();
    final key = cubit.sectionKeys;

    return ScrollConfiguration(
      behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
      child: SingleChildScrollView(
        controller: cubit.scrollController,
        child: Column(
          children: [
            TSize.s48.toHeight,
            widthCondition ? const PortfolioEndDrawer() : const HeaderTabsWidget(),
            TSize.s96.toHeight,
            WhoIAmMediumLayout(key: key[0]),
            TSize.s143.toHeight,
            AboutMeWidget(key: key[1]),
            TSize.s143.toHeight,
            ProjectsWidget(key: key[2]),
            TSize.s143.toHeight,
            SkillsWidget(key: key[3]),
            TSize.s143.toHeight,
            CertificationsWidget(key: key[4]),
            TSize.s143.toHeight,
            ExperienceWidget(key: key[5]),
            TSize.s143.toHeight,
            ContactMeWidget(key: key[6]),
            TSize.s143.toHeight,
          ],
        ),
      ),
    );
  }
}
