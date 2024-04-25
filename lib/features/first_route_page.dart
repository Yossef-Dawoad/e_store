import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:e_store/core/shared/widgets/dialogs/loading_dialogs.dart';
import 'package:e_store/core/constants/image_strings.dart';
import 'package:e_store/core/routes/routes.dart';
import 'package:e_store/core/utils/extensions/context_ext.dart';
import 'package:e_store/core/shared/logic/blocs/redirect_route/redirect_route_bloc.dart';

class ManageFirstRoute extends StatelessWidget {
  const ManageFirstRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<RedirectRouteBloc, RedirectRouteState>(
        listener: (context, state) {
          //NOTE the splash screen not included yet here
          state.maybeWhen(
            loggedIn: () =>
                context.pushNamedRouteAndRemoveUntil(Routes.navigationMenu),
            splashNotSeen: () =>
                context.pushNamedRouteAndRemoveUntil(Routes.onBoarding),
            splashSeen: () =>
                context.pushNamedRouteAndRemoveUntil(Routes.signIn),
            loading: () => animatedDialogScreenLoader(
              context,
              'Processing Your request...',
              AppImages.docerLoaderAnimation,
            ),
            orElse: () => context.pushNamedRouteAndRemoveUntil(Routes.signIn),
          );
        },
        child: const SizedBox.shrink());
  }
}
