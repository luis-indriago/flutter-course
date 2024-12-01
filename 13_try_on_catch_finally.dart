void main() async {

  print('Inicio del programa');
  
  try{
    final value = await httpGet('https://dominio.com/api/cursos');
    print( 'Exito: $value' );

  } on Exception catch( err ){
    print( 'Tenemos una Exception: $err' );
  }
  catch( err ){
    print( 'Oops algo terrible paso: $err' );
  }
  finally{
    print( 'FIn del try catch' );
  }
    
  print('Fin del programa');
}

Future<String> httpGet( String url) async
{
  await Future.delayed( const Duration(seconds: 1) );

  throw Exception('No hay parametros en el URL')
  //throw 'Error en la peticion';
  
  //return 'Tenemos un valor de la peticion';
}