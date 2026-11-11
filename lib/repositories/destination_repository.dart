import '../models/destination.dart';

class DestinationRepository {
  
  List<Destination> getDestinations() {
    return [
      Destination(
        id: '1',
        name: 'Cristo Redentor',
        location: 'Rio de Janeiro, Brasil',
        description: 'Símbolo do cristianismo brasileiro, o Cristo Redentor é uma estátua art déco...',
        imageUrl: 'https://images.unsplash.com/photo-1483729558449-99ef09a8c325', // Exemplo de URL
        rating: 4.9,
      ),
      Destination(
        id: '2',
        name: 'Torre Eiffel',
        location: 'Paris, França',
        description: 'Uma torre de treliça de ferro forjado no Champ de Mars em Paris.',
        imageUrl: 'https://images.unsplash.com/photo-1511739001486-6bfe10ce785f',
        rating: 4.8,
      ),
      Destination(
        id: '3',
        name: 'Machu Picchu',
        location: 'Cusco, Peru',
        description: 'Uma cidadela inca do século XV localizada na Cordilheira Oriental do sul do Peru.',
        imageUrl: 'https://images.unsplash.com/photo-1526392060635-9d6019884377',
        rating: 4.7,
      ),
    ];
  }
}