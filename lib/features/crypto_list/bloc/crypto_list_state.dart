part of 'crypto_list_bloc.dart';

abstract class CryptoListState extends Equatable {}

class CryptoListInitial extends CryptoListState {
  @override
  List<Object?> get props => throw UnimplementedError();
}

class CryptoListLoading extends CryptoListState {
  @override
  List<Object?> get props => throw UnimplementedError();
}

class CryptoListLoaded extends CryptoListState {
  CryptoListLoaded({required this.coinsList});

  final List<CryptoCoin> coinsList;

  @override
  List<Object?> get props => [coinsList];
}

class CryptoListLoadingFailed extends CryptoListState {
  CryptoListLoadingFailed({this.message});

  final Object? message;

  @override
  List<Object?> get props => [message];
}
