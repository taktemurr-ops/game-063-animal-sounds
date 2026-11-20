import 'package:flutter/material.dart';

import '../app/game_api.dart';
import 'kids_quiz_view.dart';
import 'rules.dart';

/// Kids & Family game: kidsMode treats every player as a child (no
/// personalized ads, no analytics, child-directed ad requests, parental
/// gate in the shop).
final gameConfig = GameConfig(
  gameId: 'game-063-animal-sounds',
  title: const ['Hayvan Sesleri', 'Animal Sounds', 'Tierstimmen', 'Sonidos de Animales', 'Cris des Animaux'],
  tagline: const ['Hayvanları sesinden tanı!', 'Guess the animal by its sound!', 'Erkenne Tiere an der Stimme!', '¡Adivina el animal por su sonido!', 'Devine l\'animal à son cri !'],
  seedColor: const Color(0xFF588157),
  icon: Icons.pets,
  rules: AnimalRules(),
  buildPlay: (ctx) => KidsQuizView(ctx: ctx),
  kidsMode: true,
  tutorial: const [
    TutorialStep(Icons.volume_up, ['Hoparlöre basıp sesi tekrar dinle.', 'Tap the speaker to hear it again.', 'Lautsprecher antippen.', 'Toca el altavoz.', 'Touchez le haut-parleur.']),
    TutorialStep(Icons.pets, ['Doğru hayvana dokun.', 'Tap the right animal.', 'Tippe auf das richtige Tier.', 'Toca el animal correcto.', 'Touchez le bon animal.']),
    TutorialStep(Icons.forest, ['Hayvanların nerede yaşadığını da öğren.', 'Learn where animals live too.', 'Lerne, wo Tiere leben.', 'Aprende dónde viven.', 'Apprends où ils vivent.']),
  ],
);
