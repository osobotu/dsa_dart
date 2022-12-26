class Node {
  final int id;
  final List<Node> subordinates;

  Node({
    required this.id,
    this.subordinates = const [],
  });
}

Node? treeSearch({
  required int id,
  required Node parent,
}) {
  if (parent.id == id) return parent;
  if (parent.subordinates.isEmpty) return null;

  for (var child in parent.subordinates) {
    Node? found = treeSearch(id: id, parent: child);
    if (found != null) return found;
  }
  return null;
}
