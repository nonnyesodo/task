import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import '../../pages/services.dart';
part 'service_state.dart';

class ServiceCubit extends Cubit<ServiceState> {
  ServiceCubit() : super(ServiceInitial());
  List bottomnavScreen = const [
    Services(),
    Services(),
    Services(),
    Services(),
  ];
  int bottonnavIndex = 3;

  changeBottomNav(value) {
    emit(ServiceLoadingState());
    bottonnavIndex = value;
    emit(ServiceLoadedState());
  }

  int length = 0;
  change() {
    emit(ServiceLoadingState());
    length = 2;
    log(length.toString());
    emit(ServiceLoadedState());
  }
}
