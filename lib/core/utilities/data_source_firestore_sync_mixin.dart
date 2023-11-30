//If we are online perform a sync with the server
//If we are offline perform a sync with the local storage
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';

mixin DataSourceFirestoreSyncMixin {
  Future<void> performSync(Future<void> Function() syncAction) async {
    final hasInternetAccess = await InternetConnection().hasInternetAccess;

    if (hasInternetAccess) {
      await syncAction();
    } else {
      syncAction();
    }
  }
}
