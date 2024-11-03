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
  int widgetId;
  String title;
  bool isHovered;
  HeaderData(this.id, this.widgetId, this.title, this.isHovered);

  HeaderData copyWith({
    int? id,
    int? widgetId,
    String? title,
    bool? isHovered,
  }) =>
      HeaderData(
        id ?? this.id,
        widgetId ?? this.widgetId,
        title ?? this.title,
        isHovered ?? this.isHovered,
      );
}
