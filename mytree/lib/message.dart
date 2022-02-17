Padding(
padding: const EdgeInsets.all(16.0),
child: Align(
alignment: Alignment.topRight,
child: FloatingActionButton(
onPressed: _tree,
materialTapTargetSize: MaterialTapTargetSize.padded,
backgroundColor: Colors.green,
child: const Icon(Icons.search, size: 36.0),
),
),
),