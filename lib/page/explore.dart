import 'dart:async';

import 'package:flutter/material.dart';
import 'package:travel4/bottom_bar.dart';
import 'package:travel4/widgets/explore_list_loaded.dart';
import 'package:travel4/widgets/explore_shimmer.dart';

class Explore extends StatefulWidget {
  const Explore({super.key});

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  bool isLoading = true;
  @override
  Widget build(BuildContext context) {
  
    return const ExploreListLoaded();
  }
}