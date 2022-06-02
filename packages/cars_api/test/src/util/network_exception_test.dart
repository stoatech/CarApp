// ignore_for_file: prefer_const_constructors
import 'package:cars_api/src/util/localization_exceptions.dart';
import 'package:cars_api/src/util/network_exception.dart';
import 'package:test/test.dart';

void main() {
  group('NetworkException', () {
    group('parsing from HTTP status codes', () {
      test('can be parsed from HTTP status code 400', () {
        final networkException = NetworkException.handleResponse(400);
        expect(networkException, NetworkException.unauthorizedRequest());
      });

      test('can be parsed from HTTP status code 401', () {
        final networkException = NetworkException.handleResponse(401);
        expect(networkException, NetworkException.unauthorizedRequest());
      });

      test('can be parsed from HTTP status code 403', () {
        final networkException = NetworkException.handleResponse(403);
        expect(networkException, NetworkException.unauthorizedRequest());
      });

      test('can be parsed from HTTP status code 404', () {
        final networkException = NetworkException.handleResponse(404);
        expect(networkException, NetworkException.notFound('Not found'));
      });

      test('can be parsed from HTTP status code 408', () {
        final networkException = NetworkException.handleResponse(408);
        expect(networkException, NetworkException.requestTimeout());
      });

      test('can be parsed from HTTP status code 409', () {
        final networkException = NetworkException.handleResponse(409);
        expect(networkException, NetworkException.conflict());
      });

      test('can be parsed from HTTP status code 500', () {
        final networkException = NetworkException.handleResponse(500);
        expect(networkException, NetworkException.internalServerError());
      });

      test('can be parsed from HTTP status code 503', () {
        final networkException = NetworkException.handleResponse(503);
        expect(networkException, NetworkException.serviceUnavailable());
      });

      test('can be parsed from HTTP status code 666', () {
        final networkException = NetworkException.handleResponse(666);
        expect(
          networkException,
          NetworkException.defaultError('Received invalid status code: 666'),
        );
      });
    });

    group('error messages', () {
      test('get message from NotImplemented error', () {
        final networkException = NetworkException.notImplemented();
        final errorMessage = NetworkException.getErrorMessage(networkException);

        expect(
          errorMessage,
          'Not Implemented',
        );
      });

      test('get message from RequestCancelled error', () {
        final networkException = NetworkException.requestCancelled();
        final errorMessage = NetworkException.getErrorMessage(networkException);

        expect(
          errorMessage,
          'Request Cancelled',
        );
      });

      test('get message from UnauthorizedRequest error', () {
        final networkException = NetworkException.unauthorizedRequest();
        final errorMessage = NetworkException.getErrorMessage(networkException);

        expect(
          errorMessage,
          'Unauthorized request',
        );
      });

      test('get message from UnexpectedError error', () {
        final networkException = NetworkException.unexpectedError();
        final errorMessage = NetworkException.getErrorMessage(networkException);

        expect(
          errorMessage,
          'Unexpected error occurred',
        );
      });

      test('get message from BadRequest error', () {
        final networkException = NetworkException.badRequest();
        final errorMessage = NetworkException.getErrorMessage(networkException);

        expect(
          errorMessage,
          'Bad request',
        );
      });

      test('get message from NotFound error', () {
        final networkException = NetworkException.notFound('Not found');
        final errorMessage = NetworkException.getErrorMessage(networkException);

        expect(
          errorMessage,
          'Not found',
        );
      });

      test('get message from MethodNotAllowed error', () {
        final networkException = NetworkException.methodNotAllowed();
        final errorMessage = NetworkException.getErrorMessage(networkException);

        expect(
          errorMessage,
          'Method Allowed',
        );
      });

      test('get message from RequestTimeout error', () {
        final networkException = NetworkException.requestTimeout();
        final errorMessage = NetworkException.getErrorMessage(networkException);

        expect(
          errorMessage,
          'Connection request timeout',
        );
      });

      test('get message from NoInternetConnection error', () {
        final networkException = NetworkException.noInternetConnection();
        final errorMessage = NetworkException.getErrorMessage(networkException);

        expect(
          errorMessage,
          'No internet connection',
        );
      });

      test('get message from InternalServerError error', () {
        final networkException = NetworkException.internalServerError();
        final errorMessage = NetworkException.getErrorMessage(networkException);

        expect(
          errorMessage,
          'Internal Server Error',
        );
      });

      test('get message from ServiceUnavailable error', () {
        final networkException = NetworkException.serviceUnavailable();
        final errorMessage = NetworkException.getErrorMessage(networkException);

        expect(
          errorMessage,
          'Service unavailable',
        );
      });

      test('get message from Conflict error', () {
        final networkException = NetworkException.conflict();
        final errorMessage = NetworkException.getErrorMessage(networkException);

        expect(
          errorMessage,
          'Error due to a conflict',
        );
      });

      test('get message from SendTimeout error', () {
        final networkException = NetworkException.sendTimeout();
        final errorMessage = NetworkException.getErrorMessage(networkException);

        expect(
          errorMessage,
          'Send timeout in connection with API server',
        );
      });

      test('get message from UnableToProcess error', () {
        final networkException = NetworkException.unableToProcess();
        final errorMessage = NetworkException.getErrorMessage(networkException);

        expect(
          errorMessage,
          'Unable to process the data',
        );
      });

      test('get message from DefaultError error', () {
        final networkException = NetworkException.defaultError('Default error');
        final errorMessage = NetworkException.getErrorMessage(networkException);

        expect(
          errorMessage,
          'Default error',
        );
      });

      test('get message from FormatException error', () {
        final networkException = NetworkException.formatException();
        final errorMessage = NetworkException.getErrorMessage(networkException);

        expect(
          errorMessage,
          'Unexpected error occurred',
        );
      });

      test('get message from NotAcceptable error', () {
        final networkException = NetworkException.notAcceptable();
        final errorMessage = NetworkException.getErrorMessage(networkException);

        expect(
          errorMessage,
          'Not acceptable',
        );
      });
    });
  });

  test('get message from NotAcceptable error', () {
    LocalizationExceptions.buildDefaultPolishExceptions();
  });
}
