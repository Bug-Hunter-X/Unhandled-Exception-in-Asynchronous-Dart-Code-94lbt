# Unhandled Exception in Asynchronous Dart Code

This repository demonstrates a common error handling pattern in asynchronous Dart code.  The example showcases an HTTP request where exceptions are caught, but could benefit from more robust error handling.

## Bug

The provided Dart code performs an HTTP GET request.  While it includes a `try-catch` block, error handling is rudimentary.  More sophisticated techniques are needed for production applications. For example, the `Exception` is just printed, and then rethrown.  A better solution might involve specific exception handling and reporting mechanisms. 

## Solution

The solution showcases improved error handling, logging, and potentially custom exceptions for better identification and debugging.
