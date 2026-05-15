import 'dart:async';

import 'package:ai_eru_tawasol/features/authentication/presentation/constants/auth_colors.dart';
import 'package:ai_eru_tawasol/features/authentication/presentation/manager/otp_cubit/otp_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class OtpResendSection extends StatefulWidget {
  const OtpResendSection({super.key, required this.email});

  final String email;

  @override
  State<OtpResendSection> createState() => _OtpResendSectionState();
}

class _OtpResendSectionState extends State<OtpResendSection> {
  int _seconds = 60;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    _timer?.cancel();
    setState(() => _seconds = 60);
    _timer = Timer.periodic(const Duration(seconds: 1), (_) {
      if (_seconds <= 0) {
        _timer?.cancel();
        return;
      }
      if (mounted) setState(() => _seconds--);
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<OtpCubit, OtpState>(
      listenWhen: (_, state) => state is OtpInitial,
      listener: (_, __) => _startTimer(),
      child: _seconds > 0
          ? Text(
              'Resend code in ${_seconds}s',
              style: GoogleFonts.plusJakartaSans(
                color: Colors.white38,
                fontSize: 13,
              ),
            )
          : TextButton(
              onPressed: () =>
                  context.read<OtpCubit>().resendOtp(email: widget.email),
              child: Text(
                'Resend Code',
                style: GoogleFonts.plusJakartaSans(
                  color: AuthColors.primary,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
    );
  }
}
