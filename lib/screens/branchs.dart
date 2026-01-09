import 'package:flutter/material.dart';

class BranchesPage extends StatelessWidget {
  const BranchesPage({super.key});

  final List<Map<String, dynamic>> branches = const [
    {
      'name': 'Norton Central Branch',
      'location': 'Norton, Zimbabwe',
      'pastor': 'Mr T Tauro',
      'members': 150,
      'established': '2024',
      'phone': '+263 77 664 1326',
    },
    {
      'name': 'Budiro Branch',
      'location': 'Harare, Zimbabwe',
      'pastor': 'Mr W Mushipe',
      'members': 11,
      'established': '2024',
      'phone': '+263 71 755 2827',
    },
    {
      'name': 'Shamva Wadzanai Branch',
      'location': 'Shamva, Zimbabwe',
      'pastor': 'Rev. David Chigumira',
      'members': 85,
      'established': '2005',
      'phone': '+263 20 987 6543',
    },
    {
      'name': 'Chakonda Branch',
      'location': 'Shamva, Zimbabwe',
      'pastor': 'Rev. Sarah Moyo',
      'members': 95,
      'established': '2008',
      'phone': '+263 54 321 9876',
    },
    {
      'name': 'Bindura Urban Branch',
      'location': 'Bindura, Zimbabwe',
      'pastor': 'Rev. Peter Sibanda',
      'members': 70,
      'established': '2010',
      'phone': '+263 39 654 3210',
    },
    {
      'name': 'Bindura Rural Branch',
      'location': 'Bindura, Zimbabwe',
      'pastor': 'Rev. Peter Sibanda',
      'members': 70,
      'established': '2010',
      'phone': '+263 39 654 3210',
    },
    {
      'name': 'Manhodndo Branch',
      'location': 'Mt Darwin, Zimbabwe',
      'pastor': 'Rev. Peter Sibanda',
      'members': 70,
      'established': '2010',
      'phone': '+263 39 654 3210',
    },
    {
      'name': 'Muchura Branch',
      'location': 'Mt Darwin, Zimbabwe',
      'pastor': 'Rev. Peter Sibanda',
      'members': 70,
      'established': '2010',
      'phone': '+263 39 654 3210',
    },
    {
      'name': 'Rushinga Branch',
      'location': 'Mt Darwin, Zimbabwe',
      'pastor': 'Rev. Peter Sibanda',
      'members': 70,
      'established': '2010',
      'phone': '+263 39 654 3210',
    },
    {
      'name': 'Dotito Branch',
      'location': 'Mt Darwin, Zimbabwe',
      'pastor': 'Rev. Peter Sibanda',
      'members': 70,
      'established': '2010',
      'phone': '+263 39 654 3210',
    },
    {
      'name': 'Tsakare Branch',
      'location': 'Mt Darwin, Zimbabwe',
      'pastor': 'Rev. Peter Sibanda',
      'members': 70,
      'established': '2010',
      'phone': '+263 39 654 3210',
    },
    {
      'name': 'Chimvuri Branch',
      'location': 'Mt Darwin, Zimbabwe',
      'pastor': 'Rev. Peter Sibanda',
      'members': 70,
      'established': '2010',
      'phone': '+263 39 654 3210',
    },
    {
      'name': 'Goora Branch',
      'location': 'Mt Darwin, Zimbabwe',
      'pastor': 'Rev. Peter Sibanda',
      'members': 70,
      'established': '2010',
      'phone': '+263 39 654 3210',
    },
    {
      'name': 'Westcourt Branch',
      'location': 'Durwadale, Zimbabwe',
      'pastor': 'Mr, D Chiwunze',
      'members': 100,
      'established': '2024',
      'phone': '+263 77 373 3355',
    },
    {
      'name': 'Mutumba Branch',
      'location': 'Shamva, Zimbabwe',
      'pastor': 'Mr, R Alufasu',
      'members': 30,
      'established': '2024',
      'phone': '+263 77 272 3862',
    },
    {
      'name': 'Matanda Branch',
      'location': 'Shamva, Zimbabwe',
      'pastor': 'Mr, C Ziumbwa',
      'members': 100,
      'established': '2024',
      'phone': '+263 78 532 8323',
    },
    {
      'name': 'Hunyani Branch',
      'location': 'Harare, Zimbabwe',
      'pastor': 'Rev. Peter Sibanda',
      'members': 95,
      'established': '2024',
      'phone': '+263 77 242 6277',
    },
    {
      'name': 'Kadoma Branch',
      'location': 'kadoma, Zimbabwe',
      'pastor': 'Mr Mangena',
      'members': 40,
      'established': '2024',
      'phone': '+263 77 373 3355',
    },
    {
      'name': 'Chipore Branch',
      'location': 'Chipore, Zimbabwe',
      'pastor': 'Mr Mangena',
      'members': 85,
      'established': '2024',
      'phone': '+263 77 373 3355',
    },
    {
      'name': 'Dherudhe Branch',
      'location': 'Shamva, Zimbabwe',
      'pastor': 'Mr Mangena',
      'members': 80,
      'established': '2024',
      'phone': '+263 77 373 3355',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Branches'),
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
              // Header Stats
              Container(
                margin: const EdgeInsets.all(16),
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.9),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: _buildStatCard('Total Branches', '${branches.length}'),
                ),
              ),

              // Branches List
              Expanded(
                child: ListView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  itemCount: branches.length,
                  itemBuilder: (context, index) {
                    final branch = branches[index];
                    return Container(
                      margin: const EdgeInsets.only(bottom: 12),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.9),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: ExpansionTile(
                        leading: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: const Color(0xFF034C36),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: const Icon(
                            Icons.church,
                            color: Colors.white,
                          ),
                        ),
                        title: Text(
                          branch['name'],
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF034C36),
                          ),
                        ),
                        subtitle: Text(
                          branch['location'],
                          style: const TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                _buildInfoRow(Icons.person, 'Pastor', branch['pastor']),
                                const SizedBox(height: 8),
                                _buildInfoRow(Icons.calendar_today, 'Established', branch['established']),
                                const SizedBox(height: 8),
                                _buildInfoRow(Icons.phone, 'Contact', branch['phone']),
                                const SizedBox(height: 16),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    ElevatedButton.icon(
                                      onPressed: () {
                                        _showContactDialog(context, branch);
                                      },
                                      icon: const Icon(Icons.contact_phone, size: 16),
                                      label: const Text('Contact'),
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: const Color(0xFF034C36),
                                        foregroundColor: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
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

  Widget _buildStatCard(String title, String value) {
    return Column(
      children: [
        Text(
          value,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Color(0xFF034C36),
          ),
        ),
        Text(
          title,
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 12,
          ),
        ),
      ],
    );
  }

  Widget _buildInfoRow(IconData icon, String label, String value) {
    return Row(
      children: [
        Icon(icon, size: 16, color: const Color(0xFF034C36)),
        const SizedBox(width: 8),
        Text(
          '$label: ',
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xFF034C36),
          ),
        ),
        Expanded(
          child: Text(
            value,
            style: const TextStyle(color: Colors.black87),
          ),
        ),
      ],
    );
  }

  void _showContactDialog(BuildContext context, Map<String, dynamic> branch) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(branch['name']),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildInfoRow(Icons.person, 'Pastor', branch['pastor']),
              const SizedBox(height: 8),
              _buildInfoRow(Icons.location_on, 'Location', branch['location']),
              const SizedBox(height: 8),
              _buildInfoRow(Icons.phone, 'Phone', branch['phone']),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Close'),
            ),
          ],
        );
      },
    );
  }
}