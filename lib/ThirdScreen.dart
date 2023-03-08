// ３つ目のスクリーン
class ThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Third"),
      ),
      body: const Center(
        child: Text('Third Screen', style: TextStyle(fontSize: 32.0)),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 2,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            label: 'First',
            icon: Icon(Icons.home, size: 32),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.home, size: 32),
          ),
                    BottomNavigationBarItem(
            label: 'Third',
            icon: Icon(Icons.home, size: 32),
          ),
                    BottomNavigationBarItem(
            label: 'Fourth',
            icon: Icon(Icons.home, size: 32),
          ),
        ],
        onTap: (int value) {
          if (value == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FourthScreen()),
            );
          }
        },
      ),
    );
  }
}