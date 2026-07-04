part of 'create_request_cubit.dart';

@immutable
class CreateRequestState extends Equatable {
  const CreateRequestState({
    this.categories = const Idle(),
    this.selectedCategory,
    this.requestedFrom,
    this.requestedTo,
    this.priority = RequestPriority.medium,
    this.isWfh = false,
    this.note = '',
    this.submit = const Idle(),
  });

  final NetworkState<List<ItemCategoryResDm>> categories;
  final ItemCategoryResDm? selectedCategory;
  final DateTime? requestedFrom;
  final DateTime? requestedTo;
  final RequestPriority priority;
  final bool isWfh;
  final String note;
  final NetworkState<RequestResDm> submit;

  bool get canSubmit =>
      selectedCategory != null &&
      requestedFrom != null &&
      requestedTo != null &&
      !submit.isLoading;

  CreateRequestState copyWith({
    NetworkState<List<ItemCategoryResDm>>? categories,
    ItemCategoryResDm? selectedCategory,
    DateTime? requestedFrom,
    DateTime? requestedTo,
    RequestPriority? priority,
    bool? isWfh,
    String? note,
    NetworkState<RequestResDm>? submit,
  }) {
    return CreateRequestState(
      categories: categories ?? this.categories,
      selectedCategory: selectedCategory ?? this.selectedCategory,
      requestedFrom: requestedFrom ?? this.requestedFrom,
      requestedTo: requestedTo ?? this.requestedTo,
      priority: priority ?? this.priority,
      isWfh: isWfh ?? this.isWfh,
      note: note ?? this.note,
      submit: submit ?? this.submit,
    );
  }

  @override
  List<Object?> get props => [
    categories,
    selectedCategory,
    requestedFrom,
    requestedTo,
    priority,
    isWfh,
    note,
    submit,
  ];
}
