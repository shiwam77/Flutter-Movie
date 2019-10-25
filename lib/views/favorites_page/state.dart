import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie/globalbasestate/state.dart';
import 'package:movie/models/videolist.dart';
import 'package:palette_generator/palette_generator.dart';

class FavoritesPageState
    implements GlobalBaseState, Cloneable<FavoritesPageState> {
  DocumentSnapshot selectedMedia;
  Color backgroundColor;
  String backgroundUrl;
  String secbackgroundUrl;
  AnimationController animationController;
  PaletteGenerator paletteGenerator;
  QuerySnapshot movieSnapshot;
  QuerySnapshot tvSnapshot;
  bool isMovie;

  @override
  FavoritesPageState clone() {
    return FavoritesPageState()
      ..backgroundColor = backgroundColor
      ..secbackgroundUrl = secbackgroundUrl
      ..backgroundUrl = backgroundUrl
      ..selectedMedia = selectedMedia
      ..animationController = animationController
      ..paletteGenerator = paletteGenerator
      ..isMovie = isMovie
      ..movieSnapshot = movieSnapshot
      ..tvSnapshot = tvSnapshot
      ..user = user;
  }

  @override
  Locale locale;

  @override
  Color themeColor;

  @override
  FirebaseUser user;
}

FavoritesPageState initState(Map<String, dynamic> args) {
  FavoritesPageState state = FavoritesPageState();
  state.isMovie = true;
  state.backgroundColor = Colors.black;
  state.paletteGenerator = PaletteGenerator.fromColors([]);
  return state;
}
