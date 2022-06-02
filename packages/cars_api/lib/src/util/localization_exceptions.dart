import 'dart:io';

class LocalizationExceptions {
  factory LocalizationExceptions() {
    if (Platform.localeName == _polish) {
      _instance = LocalizationExceptions.buildDefaultPolishExceptions(); // coverage:ignore-line
    } else {
      _instance = LocalizationExceptions.buildDefaultEnglishExceptions();
    }
    return _instance;
  }

  factory LocalizationExceptions.buildDefaultEnglishExceptions() {
    return LocalizationExceptions._privateConstructor(
      notFound: 'Not found',
      invalidStatusCode: 'Received invalid status code',
      notImplemented: 'Not Implemented',
      requestCancelled: 'Request Cancelled',
      internalServerError: 'Internal Server Error',
      serviceUnavailable: 'Service unavailable',
      methodAllowed: 'Method Allowed',
      badRequest: 'Bad request',
      unauthorizedRequest: 'Unauthorized request',
      unexpectedError: 'Unexpected error occurred',
      requestTimeout: 'Connection request timeout',
      noInternetConnection: 'No internet connection',
      conflict: 'Error due to a conflict',
      sendTimeout: 'Send timeout in connection with API server',
      unableToProcess: 'Unable to process the data',
      formatException: 'Unexpected error occurred',
      notAcceptable: 'Not acceptable',
    );
  }

  factory LocalizationExceptions.buildDefaultPolishExceptions() {
    return LocalizationExceptions._privateConstructor(
      notFound: 'Nie znaleziono',
      invalidStatusCode: 'Otrzymano błędny kod statusu',
      notImplemented: 'Nie Zaimplementowano',
      requestCancelled: 'Request Cancelled',
      internalServerError: 'Wewnętrzny Błąd Serwera',
      serviceUnavailable: 'Serwis niedostępny',
      methodAllowed: 'Metoda Dozwolona',
      badRequest: 'Złe zapytanie',
      unauthorizedRequest: 'Nieautoryzowane zapytanie',
      unexpectedError: 'Wystąpił nieprzewidziany błąd',
      requestTimeout: 'Przekroczono czas zapytania połączenia',
      noInternetConnection: 'Brak połączenia z internetem',
      conflict: 'Błąd z powodu konfliktu',
      sendTimeout: 'Przykroczony czas wysyłania w połączeniu z API serwerem',
      unableToProcess: 'Nie można przetworzyć danych',
      formatException: 'Wystąpił nieprzewidziany błąd',
      notAcceptable: 'Niedopuszczalne',
    );
  }

  LocalizationExceptions._privateConstructor({
    required this.notFound,
    required this.invalidStatusCode,
    required this.notImplemented,
    required this.requestCancelled,
    required this.internalServerError,
    required this.serviceUnavailable,
    required this.methodAllowed,
    required this.badRequest,
    required this.unauthorizedRequest,
    required this.unexpectedError,
    required this.requestTimeout,
    required this.noInternetConnection,
    required this.conflict,
    required this.sendTimeout,
    required this.unableToProcess,
    required this.formatException,
    required this.notAcceptable,
  });

  static late final LocalizationExceptions _instance;

  final String notFound;
  final String invalidStatusCode;
  final String notImplemented;
  final String requestCancelled;
  final String internalServerError;
  final String serviceUnavailable;
  final String methodAllowed;
  final String badRequest;
  final String unauthorizedRequest;
  final String unexpectedError;
  final String requestTimeout;
  final String noInternetConnection;
  final String conflict;
  final String sendTimeout;
  final String unableToProcess;
  final String formatException;
  final String notAcceptable;
}

const _polish = 'pl_PL';
