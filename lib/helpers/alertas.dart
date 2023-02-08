part of 'helpers.dart';

mostrarLoading(BuildContext context) {

  showDialog(
   context: context,
   barrierDismissible: false,
   builder: (_) => const AlertDialog(
    title: Text('Espere..'),
    content: LinearProgressIndicator(),
   )
   );

}


mostrarAlerta(BuildContext context, String titulo, String mensaje) {

  showDialog(
   barrierDismissible: false,
   context: context,
   builder: (_) => AlertDialog(
    title: Text(titulo),
    content: Text(mensaje),
    actions: [
      MaterialButton(
        child: const Text('Ok'),
        onPressed: () => Navigator.of(context).pop()
        )
    ],
   )
   
   );


}