import 'dart:io';

import 'package:dio/dio.dart';

abstract class Failure
{
  final String errorMessage;

  const Failure(this.errorMessage);
}

class ServerFailure extends Failure{
  ServerFailure(super.errorMessage);

  factory  ServerFailure.fromDioException(DioException dioException)
  {
    switch(dioException.type)
    {
      
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection timeout with Apiserver');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send timeout with Apiserver');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Recive timeout with Apiserver');
      
      case DioExceptionType.badResponse:
       return ServerFailure.fromResopnse(dioException.response!.statusCode!,dioException.response!.data);
      case DioExceptionType.cancel:
       return ServerFailure('Request  to  Apiserver was canceld');
      case DioExceptionType.connectionError:
           
        return ServerFailure('There is somthing with Connection  to  Api Server');
      case DioExceptionType.unknown:
       if(dioException.message is SocketException) 
       
       {
        return ServerFailure('No enter Net connection');
       }
       return ServerFailure('Unexpected Erro , Please try again');
       default:
       return  ServerFailure('Opps There was an Error please try again');
       
       
       
    }
  }

  factory ServerFailure.fromResopnse(int statusCode ,dynamic response)
  {
    if(statusCode==400 || statusCode==401 || statusCode==403 )
    {
      return ServerFailure(response['error']['message']);
    }
    else if(statusCode==404)
    {
      return ServerFailure('Your requset not found please try later');
    }
    else if(statusCode ==500)
    {
      return ServerFailure('Internal Server error , plese try later');
    }
    else
    {
      return ServerFailure('Opps There was an Error please try again');
    }
  }
}