import 'package:notakonter/notes/nota.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class NotaKonter {
  final _db = Supabase.instance.client.from('notes');

  //create nota
  Future createNota(Nota newNota) async {
    await _db.insert(newNota.toMap());
  }

  // read nota
  final stream = Supabase.instance.client.from('notes').stream(primaryKey: [
    'id'
  ]).map((data) => data.map((notaMap) => Nota.fromMap(notaMap)).toList());

  //delete nota
  Future deleteNota(Nota nota) async {
    await _db.delete().eq('id', nota.id);
  }

  //update nota
  Future updateNota(Nota oldNota,String newContent) async {
    await _db.update({
      'content': newContent,
    }).eq('id', oldNota.id);
  }
}
