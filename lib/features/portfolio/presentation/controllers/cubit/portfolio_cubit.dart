import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'portfolio_state.dart';

class PortfolioCubit extends Cubit<PortfolioState> {
  PortfolioCubit() : super(const PortfolioState(headerData: []));

  void fillInitialHeaderData() {
    List<HeaderData> newData = [];
    List<String> titles = ['Contact', 'Resume', 'About', 'Certificate', 'Projects'];

    for (int x = 0; x < titles.length; x++) {
      newData.add(HeaderData(x, titles[x], false));
    }

    emit(state.copyWith(headerData: newData));
  }

  void onButtonHover(int id, bool isHovered) {
    final updatedHeaderData = state.headerData.map((item) {
      if (item.id == id) {
        return item.copyWith(isHovered: isHovered); // Ensure `copyWith` creates a new instance
      }
      return item;
    }).toList();

    emit(state.copyWith(headerData: updatedHeaderData)); // Emit a new state with updated data
  }
}
