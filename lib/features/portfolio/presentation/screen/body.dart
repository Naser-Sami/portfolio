import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '/features/_features.dart';
import '/config/_config.dart';

class PortfolioBody extends StatelessWidget {
  const PortfolioBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      endDrawer: const Drawer(child: EndDrawerWidget()),
      body: const SafeArea(
        child: NeumorphismContainer(
          userDefaultMargin: true,
          child: ResponsiveLayout(
            smallLayout: PortfolioBodySmall(),
            mediumLayout: PortfolioBodyMedium(),
            largeLayout: PortfolioBodyMedium(),
          ),
        ),
      ),
    );
  }
}

class EndDrawerWidget extends StatelessWidget {
  const EndDrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(TPadding.p48),
        child: ListView.separated(
          itemBuilder: (context, index) {
            return BlocBuilder<PortfolioCubit, PortfolioState>(
              builder: (context, state) {
                final data = state.headerData[index];

                return Listener(
                  onPointerUp: (event) => context.read<PortfolioCubit>().onButtonHover(data.id, false),
                  onPointerDown: (event) => context.read<PortfolioCubit>().onButtonHover(data.id, true),
                  child: NeumorphismButton(
                    isHovered: data.isHovered,
                    text: data.title,
                    onTap: () {},
                  ),
                );
              },
            );
          },
          separatorBuilder: (_, __) => const SizedBox(height: TSize.s16),
          itemCount: context.read<PortfolioCubit>().state.headerData.length,
        ),
      ),
    );
  }
}
