part of 'file_support_request_cubit.dart';

@immutable
class FileSupportRequestState extends Equatable {
  const FileSupportRequestState({
    this.type = SupportType.update,
    this.description = '',
    this.submit = const Idle(),
  });

  final SupportType type;
  final String description;
  final NetworkState<void> submit;

  bool get canSubmit => description.trim().isNotEmpty;

  FileSupportRequestState copyWith({
    SupportType? type,
    String? description,
    NetworkState<void>? submit,
  }) {
    return FileSupportRequestState(
      type: type ?? this.type,
      description: description ?? this.description,
      submit: submit ?? this.submit,
    );
  }

  @override
  List<Object?> get props => [type, description, submit];
}
