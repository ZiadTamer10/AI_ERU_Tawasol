part of 'otp_cubit.dart';

sealed class OtpState extends Equatable {
  const OtpState();
  @override
  List<Object?> get props => [];
}

final class OtpInitial extends OtpState {}

final class OtpLoading extends OtpState {}

final class OtpResending extends OtpState {}

final class OtpSuccess extends OtpState {
  final String email;
  const OtpSuccess(this.email);
  @override
  List<Object?> get props => [email];
}

final class OtpFailure extends OtpState {
  final String errMessage;
  const OtpFailure(this.errMessage);
  @override
  List<Object?> get props => [errMessage];
}
