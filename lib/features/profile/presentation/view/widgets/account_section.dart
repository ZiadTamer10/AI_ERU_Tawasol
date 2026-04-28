import 'package:ai_eru_tawasol/core/utils/styles.dart';
import 'package:flutter/material.dart';

class AccountSection extends StatelessWidget {
  const AccountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2), // لون الشادو
              blurRadius: 10, // نعومة الشادو
              spreadRadius: 2, // انتشاره
              offset: Offset(0, 4), // اتجاهه (x, y)
            ),
          ],
        ),
        child: Column(
          children: [
            ListTile(
              leading: Icon(Icons.person_outline_rounded, size: 36),
              title: Text(
                'User Name',
                style: Styles.textStyle18.copyWith(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                'Ziad Tamer',
                style: Styles.textStyle18.copyWith(color: Color(0xff9E9D97)),
              ),
              trailing: IconButton(
                icon: Icon(Icons.arrow_forward_ios_rounded),
                onPressed: () {},
              ),
            ),
            Divider(endIndent: 43, indent: 68.5, thickness: 0.5),
            ListTile(
              leading: Icon(Icons.lock_outline_rounded, size: 36),
              title: Text(
                'Password',
                style: Styles.textStyle18.copyWith(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                '********',
                style: Styles.textStyle18.copyWith(color: Color(0xff9E9D97)),
              ),
              trailing: IconButton(
                icon: Icon(Icons.visibility, size: 28),
                onPressed: () {},
              ),
            ),
            Divider(endIndent: 43, indent: 68.5, thickness: 0.5),
            ListTile(
              leading: Icon(Icons.password_rounded, size: 36),
              title: Text(
                'Change Password',
                style: Styles.textStyle18.copyWith(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: IconButton(
                icon: Icon(Icons.arrow_forward_ios_rounded),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
