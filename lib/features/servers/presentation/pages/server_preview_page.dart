import 'package:game_on/common/util/exports.dart';
import 'package:game_on/features/servers/data/models/server_model.dart';
import 'package:game_on/features/servers/presentation/widgets/server_features.dart';

class ServerPreviewPage extends StatelessWidget {
  final ServerModel serverModel;

  const ServerPreviewPage({
    super.key,
    required this.serverModel,
  });

  @override
  Widget build(BuildContext context) {
    return ScaffoldUtil(
      body: buildBody(context),
      appBar: const ReturnAppBar(title: 'Podgląd serwera'),
    );
  }

  buildBody(BuildContext context) {
    bool enabledServer =
        serverModel.info != null && serverModel.features != null;
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 7.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 4.h),
            Row(
              children: [
                Image.network(
                  serverModel.basicData.image,
                  fit: BoxFit.cover,
                  height: 32.w,
                  width: 32.w,
                ),
                Column(
                  children: [
                    Text(
                      serverModel.basicData.name,
                      style: TextStyles.xl(),
                    ),
                    Text(
                      '${serverModel.info?.onlinePlayers?.length ?? 'N/A'} graczy',
                      style: TextStyles.sm(),
                    ),
                    SizedBox(
                      width: 50.w,
                      child: Text(
                        serverModel.basicData.description,
                        style: TextStyles.sm(),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(height: 2.h),
            if (serverModel.features != null)
              ServerFeatures(serverModel: serverModel),
            SizedBox(height: 4.h),
            if (enabledServer) ...[
              SizedBox(
                width: 86.w,
                child: Text(
                  'Ten serwer wspiera logowanie gościa. Możesz dowolnie się rozejrzeć, a potem stwierdzić czy chcesz zostać!',
                  style: TextStyles.lg(),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 4.h),
              PrimaryButton(
                title: 'Zaloguj się',
                onTap: () {
                  context.push('/server/login', extra: serverModel);
                },
              ),
              SizedBox(height: 1.h),
              SecondaryButton(
                title: 'Zobacz jako gość',
                onTap: () {},
              ),
            ] else ...[
              SizedBox(
                width: 86.w,
                child: Text(
                  'Ten serwer jest chwilowo niedostępny. Spróbuj ponownie póżniej!',
                  style: TextStyles.lg(),
                  textAlign: TextAlign.center,
                ),
              ),
            ]
          ],
        ),
      ),
    );
  }
}
