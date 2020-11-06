import 'package:flutter/material.dart';

class UserProfile {
  String firstName;
  String lastName;
  String phone;
  String email;
  String bio;

  UserProfile(String firstName, String lastName, String phone, String email, String bio) {
    this.firstName = firstName;
    this.lastName = lastName;
    this.phone = phone;
    this.email = email;
    this.bio = bio;
  }
}