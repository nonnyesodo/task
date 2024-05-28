part of 'service_cubit.dart';

@immutable
sealed class ServiceState {}

final class ServiceInitial extends ServiceState {}
final class ServiceLoadingState extends ServiceState {}
final class ServiceLoadedState extends ServiceState {}
