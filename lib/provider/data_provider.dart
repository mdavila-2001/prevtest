import 'package:flutter/material.dart';
import 'package:pod_player/pod_player.dart';

class DataProvider with ChangeNotifier {

  PodPlayerController? _controller;

  PodPlayerController get controller => _controller!;
  
  VideoPlayerController? _videoPlayerController;

  VideoPlayerController get videoplayerController => _videoPlayerController!;

  late VideoPlayerController videoPlayerController;

  void initializeVideo(String videoUrl) {
    _controller?.dispose();
    _controller = PodPlayerController(
      playVideoFrom: PlayVideoFrom.network(videoUrl),
    )..initialise().then((_) {
      _controller?.play();
      notifyListeners();
    });
  }

  void changeVideo(String newVideoUrl) {
    _controller?.dispose();
    _controller = PodPlayerController(
      playVideoFrom: PlayVideoFrom.network(newVideoUrl),
    )..initialise().then((_) {

      _controller?.play();
      notifyListeners();
    });
  }



  String _idCourse = "1";

  String get idCourse {
    return _idCourse;
  }

  set idCourse(String valor) {
    _idCourse = valor;
    notifyListeners();
  }


  int _videoSelector = 0;

  int get videoSelector {
    return _videoSelector;
  }

  set videoSelector(int valor) {
    _videoSelector = valor;
    notifyListeners();
  }

  String _search = "";

  String get search {
    return _search;
  }

  set search(String valor) {
    _search = valor;
    notifyListeners();
  }

  String _searchMyCourses = "";

  String get searchMyCourses {
    return _searchMyCourses;
  }

  set searchMyCourses(String valor) {
    _searchMyCourses = valor;
    notifyListeners();
  }

  int _pageSelector = 0;

  int get pageSelector {
    return _pageSelector;
  }

  set pageSelector(int valor) {
    _pageSelector = valor;
    notifyListeners();
  }

  int _categorySelector = 0;

  int get categorySelector {
    return _categorySelector;
  }

  set categorySelector(int valor) {
    _categorySelector = valor;
    notifyListeners();
  }

}