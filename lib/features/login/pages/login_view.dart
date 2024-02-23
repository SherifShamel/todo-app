import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/core/widgets/custom_text_field.dart';
import 'package:todo_app/features/settings_provider.dart';
import 'package:todo_app/generated/assets.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  static const String routeName = "loginView";

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    var vm = Provider.of<SettingsProvider>(context);
    return Container(
      decoration: BoxDecoration(
        color: vm.currentTheme == ThemeMode.dark
            ? const Color(0xff060E1E)
            : const Color(0xffDFECDB),
        image: const DecorationImage(
            image: AssetImage(Assets.imgPattern), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: ListView(
                  physics: const ClampingScrollPhysics(),
                  children: [
                    SizedBox(height: mediaQuery.height * 0.1),
                    Text(
                      "Login",
                      textAlign: TextAlign.center,
                      style: theme.textTheme.titleLarge,
                    ),
                    SizedBox(height: mediaQuery.height * 0.2),
                    Text(
                      "Welcome Back",
                      textAlign: TextAlign.start,
                      style: theme.textTheme.bodyLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                    const SizedBox(height: 40),
                    Text(
                      "Email",
                      style: theme.textTheme.bodySmall,
                    ),
                    CustomTextField(
                      suffixWidget: const Icon(Icons.email_rounded),
                      hint: "Enter your Email.",
                      keyboardType: TextInputType.emailAddress,
                      hintColor: Colors.grey.shade700,
                    ),
                    SizedBox(height: mediaQuery.height * 0.03),
                    Text(
                      "Password",
                      style: theme.textTheme.bodySmall,
                    ),
                    const CustomTextField(
                      keyboardType: TextInputType.visiblePassword,
                      isPassword: true,
                      maxLines: 1,
                      hint: "Enter your Password.",
                    ),
                    SizedBox(height: mediaQuery.height * 0.05),
                    ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(theme.primaryColor)),
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Login", style: theme.textTheme.bodyMedium),
                          const Icon(Icons.chevron_right)
                        ],
                      ),
                    ),
                    Text(
                      "OR",
                      style: theme.textTheme.bodySmall,
                      textAlign: TextAlign.center,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text("Create New Account !",
                          style: theme.textTheme.bodyMedium),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
