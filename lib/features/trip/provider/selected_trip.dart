import 'package:challenge_with_flutter/features/trip/model/trip.dart';
import 'package:challenge_with_flutter/features/trip/model/trip_reviewer.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod/riverpod.dart';
import 'package:uuid/uuid.dart';

part 'selected_trip.g.dart';

@riverpod
class SelectedTrip extends _$SelectedTrip {
  @override
  Future<Trip> build()async {
    final list = [
      Trip(
          id: const Uuid().v4(),
          title: "Raja Ampat Islands",
          description:
              "Prarere recte ducunt ad superbus repressor.Vitas ridetis!Manducare grauiter ducunt ad dexter lactea.Poetas observare, tanquam clemens habena.Brodiums experimentum, tanquam clemens planeta.Torquiss manducare!Pol.Cum triticum prarere, omnes finises imperium mirabilis, castus nixes.Cum devatio trabem, omnes sensoremes carpseris primus, albus aususes.Calceus talis onus est.Nunquam tractare idoleum.Vae.Detrius, mortem, et canis.Vae, azureus messor!Sunt caesiumes vitare mirabilis, bi-color nomenes.Crescere nunquam ducunt ad emeritis rumor.",
          location: "Raja Ampat, Papua Barat",
          mainImageUrl:
              "https://images.unsplash.com/photo-1483683804023-6ccdb62f86ef?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8cmFqYSUyMGFtcGF0JTIwaXNsYW5kfGVufDB8fDB8fHww",
          images: [
            "https://images.unsplash.com/photo-1724258228034-32b35c43e276?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fHJhamElMjBhbXBhdCUyMGlzbGFuZHxlbnwwfHwwfHx8Mg%3D%3D",
            "https://images.unsplash.com/photo-1724258391590-6cfdc2d783b4?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fHJhamElMjBhbXBhdCUyMGlzbGFuZHxlbnwwfHwwfHx8Mg%3D%3D"
          ],
          rating: 4.8,
          saved: false,
          reviews: [
            TripReviewer(
                id: const Uuid().v4(),
                name: "John Doe",
                imageUrl: "https://i.pravatar.cc/50?img=1",
                review:
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nib",
                rating: 4.5,
                date: "2021-09-01"),
            TripReviewer(
                id: const Uuid().v4(),
                name: "Hannah Doe",
                imageUrl: "https://i.pravatar.cc/50?img=2",
                review:
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nib",
                rating: 4.5,
                date: "2021-09-01"),
            TripReviewer(
                id: const Uuid().v4(),
                name: "Moe Doe",
                imageUrl: "https://i.pravatar.cc/50?img=3",
                review:
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nib",
                rating: 4.5,
                date: "2021-09-01"),
          ])
    ];
    return list.first;
  }

  void toggleBookmark() {
    if(state.value == null) return;
    state = AsyncData(state.value!.copyWith(saved: !state.value!.saved));
  }
}
