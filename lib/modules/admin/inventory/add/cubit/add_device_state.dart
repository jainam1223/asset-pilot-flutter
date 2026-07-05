part of 'add_device_cubit.dart';

@immutable
class AddDeviceState extends Equatable {
  const AddDeviceState({
    this.categories = const Idle(),
    this.name = '',
    this.serialNo = '',
    this.categoryId,
    this.categoryName,
    this.ownerType = OwnerType.company,
    this.clientName = '',
    this.purchaseDate,
    this.submission = const Idle(),
  });

  final NetworkState<List<ItemCategoryResDm>> categories;
  final String name;
  final String serialNo;
  final String? categoryId;
  final String? categoryName;
  final OwnerType ownerType;
  final String clientName;
  final DateTime? purchaseDate;
  final NetworkState<void> submission;

  AddDeviceState copyWith({
    NetworkState<List<ItemCategoryResDm>>? categories,
    String? name,
    String? serialNo,
    String? categoryId,
    String? categoryName,
    OwnerType? ownerType,
    String? clientName,
    DateTime? purchaseDate,
    NetworkState<void>? submission,
  }) {
    return AddDeviceState(
      categories: categories ?? this.categories,
      name: name ?? this.name,
      serialNo: serialNo ?? this.serialNo,
      categoryId: categoryId ?? this.categoryId,
      categoryName: categoryName ?? this.categoryName,
      ownerType: ownerType ?? this.ownerType,
      clientName: clientName ?? this.clientName,
      purchaseDate: purchaseDate ?? this.purchaseDate,
      submission: submission ?? this.submission,
    );
  }

  @override
  List<Object?> get props => [
        categories,
        name,
        serialNo,
        categoryId,
        categoryName,
        ownerType,
        clientName,
        purchaseDate,
        submission,
      ];
}
