import 'package:game_on/common/util/exports.dart';
import 'package:game_on/common/util/widgets/text_fields.dart';
import 'package:game_on/features/servers/data/data_sources/token_storage.dart';
import 'package:game_on/features/servers/data/models/server_model.dart';
import 'package:game_on/features/user/presentation/bloc/user_bloc.dart';

class ServerLoginPage extends StatefulWidget {
  final ServerModel serverModel;

  const ServerLoginPage({
    super.key,
    required this.serverModel,
  });

  @override
  State<ServerLoginPage> createState() => _ServerLoginPageState();
}

class _ServerLoginPageState extends State<ServerLoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _codeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ScaffoldUtil(
      body: buildBody(context),
      appBar: const ReturnAppBar(title: 'Logowanie'),
    );
  }

  buildBody(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          SizedBox(height: 4.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 7.w),
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: TextStyles.base(),
                children: [
                  const TextSpan(
                    text: 'Wejdź na serwer: ',
                  ),
                  TextSpan(
                    text: widget.serverModel.basicData.name,
                    style: TextStyles.lg(),
                  ),
                  const TextSpan(
                    text:
                        ', zaloguj się, po czym wpisz komendę /gameon. \nOtrzymasz 6-znakowy kod, który będziesz musiał tutaj wprowadzić wraz ze swoją nazwą użytkownika!',
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 4.h),
          DefaultTextField(
            hintText: 'Nazwa użytkownika',
            prefixIcon: Icons.person,
            controller: _usernameController,
          ),
          SizedBox(height: 1.h),
          DefaultTextField(
            hintText: 'Kod',
            prefixIcon: Icons.numbers,
            controller: _codeController,
          ),
          SizedBox(height: 6.h),
          PrimaryButton(
            title: 'Zaloguj się',
            onTap: () async {
              Dio dio = get<Dio>();
              String url = 'http://192.168.1.35:8080/api/v1/authentication/pair';

              try {
                Response response = await dio.post(url, data: {
                  'nickname': _usernameController.text,
                  'token': _codeController.text,
                });

                Map<String, dynamic> data = response.data;
                if (data['success'] == false) {
                  if (kDebugMode) {
                    print('Did not receive token');
                  }
                  return;
                }

                String token = data['token'];
                UserBloc userBloc = get();
                userBloc.add(UserSet(widget.serverModel.basicData, token));
                final state = userBloc.state;
                if (state is UserLoaded) {
                  await TokenStorage.updateToken(widget.serverModel.basicData, token);
                  if (context.mounted) {
                    context.push('/server/page');
                  }
                  return;
                }
              } catch (e) {
                if (kDebugMode) {
                  print('Not success');
                }
              }
            },
          )
        ],
      ),
    );
  }
}
