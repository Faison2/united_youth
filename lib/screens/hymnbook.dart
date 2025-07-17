import 'package:flutter/material.dart';

class HymnBookPage extends StatefulWidget {
  const HymnBookPage({super.key});

  @override
  State<HymnBookPage> createState() => _HymnBookPageState();
}

class _HymnBookPageState extends State<HymnBookPage> {
  final TextEditingController _searchController = TextEditingController();
  List<Map<String, String>> hymns = [
    {'number': '1', 'title': 'Amazing Grace', 'firstLine': 'Amazing grace, how sweet the sound...'},
    {'number': '2', 'title': 'How Great Thou Art', 'firstLine': 'O Lord my God, when I in awesome wonder...'},
    {'number': '3', 'title': 'Blessed Assurance', 'firstLine': 'Blessed assurance, Jesus is mine...'},
    {'number': '4', 'title': 'Great Is Thy Faithfulness', 'firstLine': 'Great is thy faithfulness, O God my Father...'},
    {'number': '5', 'title': 'Holy, Holy, Holy', 'firstLine': 'Holy, holy, holy! Lord God Almighty...'},
    {'number': '6', 'title': 'It Is Well With My Soul', 'firstLine': 'When peace like a river attendeth my way...'},
    {'number': '7', 'title': 'What A Friend We Have In Jesus', 'firstLine': 'What a friend we have in Jesus...'},
    {'number': '8', 'title': 'Rock of Ages', 'firstLine': 'Rock of ages, cleft for me...'},
  ];

  List<Map<String, String>> filteredHymns = [];

  @override
  void initState() {
    super.initState();
    filteredHymns = hymns;
  }

  void _filterHymns(String query) {
    setState(() {
      if (query.isEmpty) {
        filteredHymns = hymns;
      } else {
        filteredHymns = hymns.where((hymn) {
          return hymn['number']!.contains(query) ||
              hymn['title']!.toLowerCase().contains(query.toLowerCase()) ||
              hymn['firstLine']!.toLowerCase().contains(query.toLowerCase());
        }).toList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hymn Book'),
        backgroundColor: const Color(0xFF034C36),
        foregroundColor: Colors.white,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFBDCDCF),
              Color(0xFF034C36),
            ],
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              // Search Bar
              Container(
                margin: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.9),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: TextField(
                  controller: _searchController,
                  onChanged: _filterHymns,
                  decoration: const InputDecoration(
                    hintText: 'Search hymns by number, title, or lyrics...',
                    prefixIcon: Icon(Icons.search, color: Color(0xFF034C36)),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  ),
                ),
              ),

              // Hymns List
              Expanded(
                child: ListView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  itemCount: filteredHymns.length,
                  itemBuilder: (context, index) {
                    final hymn = filteredHymns[index];
                    return Container(
                      margin: const EdgeInsets.only(bottom: 12),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.9),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: ListTile(
                        leading: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: const Color(0xFF034C36),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Center(
                            child: Text(
                              hymn['number']!,
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        title: Text(
                          hymn['title']!,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF034C36),
                          ),
                        ),
                        subtitle: Text(
                          hymn['firstLine']!,
                          style: const TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        trailing: const Icon(
                          Icons.arrow_forward_ios,
                          color: Color(0xFF034C36),
                        ),
                        onTap: () {
                          _showHymnDetail(context, hymn);
                        },
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showHymnDetail(BuildContext context, Map<String, String> hymn) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        color: const Color(0xFF034C36),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Center(
                        child: Text(
                          hymn['number']!,
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Text(
                        hymn['title']!,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF034C36),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Text(
                  hymn['firstLine']!,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  'That saved a wretch like me...\nI once was lost, but now am found...\nWas blind, but now I see...',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text('Close'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }
}