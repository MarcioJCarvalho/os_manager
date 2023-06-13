abstract class GenericDAO<T, ID> {
  Future<T> buscarPorID(ID id);
  Future<List<T>> buscarTodos();
  Future<bool> excluir(ID id);
  Future<T> salvar(T object);
}