import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'info_contacts_state.dart';
part 'info_contacts_cubit.freezed.dart';

@injectable
class InfoContactsCubit extends Cubit<InfoContactsState> {
  InfoContactsCubit() : super(const InfoContactsState());
}
