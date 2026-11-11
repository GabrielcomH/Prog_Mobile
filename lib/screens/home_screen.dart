import 'package:flutter/material.dart';
import '../models/destination.dart';
import '../repositories/destination_repository.dart';
import '../widgets/destination_card.dart';
import 'detail_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Instancia o repositório
  final DestinationRepository _repository = DestinationRepository();
  late List<Destination> _destinations;

  @override
  void initState() {
    super.initState();
    // Carrega os dados
    _destinations = _repository.getDestinations();
  }

  void _navigateToDetail(BuildContext context, Destination destination) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DetailScreen(destination: destination),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Guia de Turismo'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: _destinations.length,
        itemBuilder: (context, index) {
          final destination = _destinations[index];
          return DestinationCard(
            destination: destination,
            onTap: () => _navigateToDetail(context, destination),
          );
        },
      ),
    );
  }
}