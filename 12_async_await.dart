void main() async {

  print('Inicio del programa');
  
  try{
    final value = await httpGet('https://dominio.com/api/cursos');
    print( value );

  }catch( err ){
    print( 'Tenemos un error: $value' );
  }
  
    
  print('Fin del programa');
}

Future<String> httpGet( String url) async
{
  await Future.delayed( const Duration(seconds: 1) );
  
  return 'Tenemos un valor de la peticion';
}