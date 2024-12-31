# Dart Asynchronous Network Request Error Handling

This repository demonstrates a common error in Dart when handling asynchronous network requests and provides a solution for robust error handling.

The `bug.dart` file contains code with inadequate error handling, while `bugSolution.dart` shows improved error management.

## Problem

The original code lacks detailed exception handling, resulting in a potential for unexpected app behavior if the network request fails.  Only a generic `print` statement is present, offering minimal information for debugging.

## Solution

The solution uses a `try-catch` block for handling exceptions during the network request.  More specifically, it includes:

- Checking the response status code for successful requests.
- Throwing custom exceptions with informative messages for easier debugging.
- Re-throwing the exception to allow higher-level error handling if needed.
- Specific error handling for different HTTP status codes (though not shown in this example).