part of 'private_chat_cubit.dart';

sealed class PrivateChatState extends Equatable {
  const PrivateChatState();

  @override
  List<Object?> get props => [];
}

final class PrivateChatInitial extends PrivateChatState {}

final class PrivateChatLoading extends PrivateChatState {}

final class PrivateChatLoaded extends PrivateChatState {
  final List<ChatMessage> messages;
  final bool isOtherTyping;

  const PrivateChatLoaded({
    required this.messages,
    this.isOtherTyping = false,
  });

  @override
  List<Object?> get props => [messages, isOtherTyping];

  PrivateChatLoaded copyWith({
    List<ChatMessage>? messages,
    bool? isOtherTyping,
  }) {
    return PrivateChatLoaded(
      messages: messages ?? this.messages,
      isOtherTyping: isOtherTyping ?? this.isOtherTyping,
    );
  }
}

final class PrivateChatError extends PrivateChatState {
  final String message;

  const PrivateChatError(this.message);

  @override
  List<Object?> get props => [message];
}
