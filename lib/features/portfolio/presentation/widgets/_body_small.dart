import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '/core/_core.dart';
import '/config/_config.dart';
import '/features/_features.dart';

class PortfolioBodySmall extends StatelessWidget {
  const PortfolioBodySmall({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<PortfolioCubit>();
    final key = cubit.sectionKeys;

    return Padding(
      padding: const EdgeInsets.only(top: 24),
      child: SingleChildScrollView(
        controller: cubit.scrollController,
        child: Column(
          children: [
            const PortfolioEndDrawer(),
            TSize.s16.toHeight,
            WhoIAmSmallLayout(key: key[1]),
            TSize.s143.toHeight,
            AboutMeWidget(key: key[2]),
            TSize.s143.toHeight,
            ProjectsWidget(key: key[4]),
            TSize.s143.toHeight,
            SkillsWidget(key: key[5]),
            TSize.s143.toHeight,
            CertificationsWidget(key: key[6]),
            TSize.s143.toHeight,
            ExperienceWidget(key: key[3]),
            TSize.s143.toHeight,
            ContactMeWidget(key: key[0]),
            TSize.s143.toHeight,
          ],
        ),
      ),
    );
  }
}
