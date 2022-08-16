import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:najem/cubits/cubit/language_cubit.dart';
import 'package:najem/generated/l10n.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(S.of(context).settings),
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          ListTile(
            leading: Icon(Icons.language),
            title: Text(S.of(context).language),
            trailing: DropdownButton(
                value: Localizations.localeOf(context).languageCode,
                underline: Container(),
                icon: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Icon(Icons.arrow_drop_down_rounded),
                ),
                items: [
                  DropdownMenuItem(
                    child: Text('العربية'),
                    value: 'ar',
                  ),
                  DropdownMenuItem(
                    child: Text('English'),
                    value: 'en',
                  ),
                  DropdownMenuItem(
                    child: Text('French'),
                    value: 'fr',
                  ),
                  DropdownMenuItem(
                    child: Text('Chinese'),
                    value: 'zh',
                  ),
                ],
                onChanged: (String? newLang) {
                  context
                      .read<LanguageCubit>()
                      .changeLang(context, newLang ?? 'en');
                }),
          ),
        ],
      ),
    );
  }
}
