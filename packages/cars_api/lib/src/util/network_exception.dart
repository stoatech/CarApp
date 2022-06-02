import 'package:cars_api/src/util/localization_exceptions.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'network_exception.freezed.dart';

/// Models for API exceptions
@freezed
abstract class NetworkException with _$NetworkException {
  /// RequestCancelled
  const factory NetworkException.requestCancelled() = RequestCancelled;

  /// UnauthorizedRequest
  const factory NetworkException.unauthorizedRequest() = UnauthorizedRequest;

  /// BadRequest
  const factory NetworkException.badRequest() = BadRequest;

  /// NotFound
  const factory NetworkException.notFound(String reason) = NotFound;

  /// MethodNotAllowed
  const factory NetworkException.methodNotAllowed() = MethodNotAllowed;

  /// NotAcceptable
  const factory NetworkException.notAcceptable() = NotAcceptable;

  /// RequestTimeout
  const factory NetworkException.requestTimeout() = RequestTimeout;

  /// SendTimeout
  const factory NetworkException.sendTimeout() = SendTimeout;

  /// Conflict
  const factory NetworkException.conflict() = Conflict;

  /// InternalServerError
  const factory NetworkException.internalServerError() = InternalServerError;

  /// NotImplemented
  const factory NetworkException.notImplemented() = NotImplemented;

  /// ServiceUnavailable
  const factory NetworkException.serviceUnavailable() = ServiceUnavailable;

  /// NoInternetConnection
  const factory NetworkException.noInternetConnection() = NoInternetConnection;

  /// FormatException
  const factory NetworkException.formatException() = FormatException;

  /// UnableToProcess
  const factory NetworkException.unableToProcess() = UnableToProcess;

  /// DefaultError
  const factory NetworkException.defaultError(String error) = DefaultError;

  /// UnexpectedError
  const factory NetworkException.unexpectedError() = UnexpectedError;

  /// Get exception model from HTTP status code
  factory NetworkException.handleResponse(int statusCode) {
    switch (statusCode) {
      case 400:
      case 401:
      case 403:
        return const NetworkException.unauthorizedRequest();
      case 404:
        return NetworkException.notFound(_localizationExceptions.notFound);
      case 409:
        return const NetworkException.conflict();
      case 408:
        return const NetworkException.requestTimeout();
      case 500:
        return const NetworkException.internalServerError();
      case 503:
        return const NetworkException.serviceUnavailable();
      default:
        final responseCode = statusCode;
        return NetworkException.defaultError(
          '${_localizationExceptions.invalidStatusCode}: $responseCode',
        );
    }
  }

  static final LocalizationExceptions _localizationExceptions =
      LocalizationExceptions();

  /// Get error message from NetworkException model object
  static String getErrorMessage(NetworkException networkExceptions) {
    var errorMessage = '';
    networkExceptions.when(
      notImplemented: () {
        errorMessage = _localizationExceptions.notImplemented;
      },
      requestCancelled: () {
        errorMessage = _localizationExceptions.requestCancelled;
      },
      internalServerError: () {
        errorMessage = _localizationExceptions.internalServerError;
      },
      notFound: (String reason) {
        errorMessage = reason;
      },
      serviceUnavailable: () {
        errorMessage = _localizationExceptions.serviceUnavailable;
      },
      methodNotAllowed: () {
        errorMessage = _localizationExceptions.methodAllowed;
      },
      badRequest: () {
        errorMessage = _localizationExceptions.badRequest;
      },
      unauthorizedRequest: () {
        errorMessage = _localizationExceptions.unauthorizedRequest;
      },
      unexpectedError: () {
        errorMessage = _localizationExceptions.unexpectedError;
      },
      requestTimeout: () {
        errorMessage = _localizationExceptions.requestTimeout;
      },
      noInternetConnection: () {
        errorMessage = _localizationExceptions.noInternetConnection;
      },
      conflict: () {
        errorMessage = _localizationExceptions.conflict;
      },
      sendTimeout: () {
        errorMessage = _localizationExceptions.sendTimeout;
      },
      unableToProcess: () {
        errorMessage = _localizationExceptions.unableToProcess;
      },
      defaultError: (String error) {
        errorMessage = error;
      },
      formatException: () {
        errorMessage = _localizationExceptions.formatException;
      },
      notAcceptable: () {
        errorMessage = _localizationExceptions.notAcceptable;
      },
    );
    return errorMessage;
  }
}
