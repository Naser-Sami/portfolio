import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '/features/_features.dart';
import '/config/_config.dart';
import '/core/_core.dart';

class PortfolioEndDrawer extends StatelessWidget {
  const PortfolioEndDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(end: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(
            width: 45,
            height: 45,
            child: FloatingActionButton(
              onPressed: () => Scaffold.of(context).openEndDrawer(),
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              child: const Icon(Icons.menu),
            ),
          ),
        ],
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
        child: Column(
          children: [
            TSize.s24.toHeight,
            const ThemeWidget(),
            TSize.s24.toHeight,
            const Divider(),
            TSize.s48.toHeight,
            Expanded(
              child: ListView.separated(
                itemBuilder: (context, index) {
                  return BlocBuilder<PortfolioCubit, PortfolioState>(
                    builder: (context, state) {
                      final data = state.headerData[index];

                      if (kIsWeb) {
                        return NeumorphismButton(
                          isHovered: data.isHovered,
                          text: data.title,
                          onTap: () {
                            context.read<PortfolioCubit>().scrollToSection(data.id);
                            Navigator.pop(context);
                          },
                          onHover: (bool val) => context.read<PortfolioCubit>().onButtonHover(data.id, val),
                        );
                      }

                      return Listener(
                        onPointerUp: (event) => context.read<PortfolioCubit>().onButtonHover(data.id, false),
                        onPointerDown: (event) => context.read<PortfolioCubit>().onButtonHover(data.id, true),
                        child: NeumorphismButton(
                          isHovered: data.isHovered,
                          text: data.title,
                          onTap: () {
                            WidgetsBinding.instance.addPostFrameCallback((_) {
                              context.read<PortfolioCubit>().scrollToSection(data.widgetId);
                              Navigator.pop(context);
                            });
                          },
                        ),
                      );
                    },
                  );
                },
                separatorBuilder: (_, __) => const SizedBox(height: TSize.s16),
                itemCount: context.read<PortfolioCubit>().state.headerData.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
