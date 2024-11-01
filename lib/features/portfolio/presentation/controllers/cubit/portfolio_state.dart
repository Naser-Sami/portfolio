part of 'portfolio_cubit.dart';

class PortfolioState extends Equatable {
  const PortfolioState({required this.headerData});

  final List<HeaderData> headerData;

  PortfolioState copyWith({List<HeaderData>? headerData}) => PortfolioState(
        headerData: headerData ?? this.headerData,
      );

  @override
  List<Object> get props => [headerData];
}

class HeaderData {
  int id;
  String title;
  bool isHovered;
  HeaderData(this.id, this.title, this.isHovered);

  HeaderData copyWith({
    int? id,
    String? title,
    bool? isHovered,
  }) =>
      HeaderData(
        id ?? this.id,
        title ?? this.title,
        isHovered ?? this.isHovered,
      );
}
