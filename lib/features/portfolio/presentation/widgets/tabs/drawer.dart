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
      child: Column(
        children: [
          TSize.s24.toHeight,
          const ThemeWidget(),
          TSize.s24.toHeight,
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: TPadding.p48),
            child: Divider(),
          ),
          TSize.s48.toHeight,
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: TPadding.p48),
              child: ListView.separated(
                itemBuilder: (context, index) {
                  return BlocBuilder<PortfolioCubit, PortfolioState>(
                    builder: (context, state) {
                      final data = state.headerData[index];

                      if (kIsWeb || TDeviceUtils.isDesktop()) {
                        return NeumorphismButton(
                          isHovered: data.isHovered,
                          text: data.title,
                          onTap: () {
                            context.read<PortfolioCubit>().scrollToSection(data.widgetId);
                            Navigator.pop(context);
                          },
                          onHover: (bool val) => context.read<PortfolioCubit>().onHeaderButtonHover(data.id, val),
                        );
                      }

                      return Listener(
                        onPointerUp: (event) => context.read<PortfolioCubit>().onHeaderButtonHover(data.id, false),
                        onPointerDown: (event) => context.read<PortfolioCubit>().onHeaderButtonHover(data.id, true),
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
          ),
          const Padding(
            padding: EdgeInsets.all(TPadding.p24),
            child: ContactsIconsWidget(),
          ),
        ],
      ),
    );
  }
}
