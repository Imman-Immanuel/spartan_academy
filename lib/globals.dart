import 'package:flutter/material.dart';

int smallScreenWidth = 320;
int mediumScreenWidth = 600;

List<Map<String, String>> welcomeContents = [
  {
    'heading': 'Why choose SPARTAN TAEKWONDO MARTIAL ART ACADEMY ?',
    'content':
        'Expert Instructors, Our experienced and certified instructors are passionate about Taekwondo and dedicated to helping you achieve your goals.'
  },
  {
    'heading': 'Self-Defense Skills',
    'content':
        'Learn practical self-defense techniques that can be applied in real-life situations. Gain confidence knowing that you have the skills to protect yourself and your loved ones'
  },
  {
    'heading': 'Character Development',
    'content':
        "Taekwondo is not just about kicks and punches; it's about building character. Our training instills values such as respect, courtesy, humility, and perseverance, shaping individuals into responsible and respectful members of society."
  },
  {
    'heading': 'Martial Arts Benefits',
    'content':
        "Physical Fitness, Taekwondo is a dynamic martial art that enhances cardiovascular health, Flexibility, Strength, and coordination. Our classes are designed to provide a full-body workout, \nHelping you achieve and maintain optimal physical fitness."
  }
];

List<Map<String, dynamic>> registrationLables = [
  {
    "lable": "Name",
    "hint": "Please enter your Name",
    "keyboardType": TextInputType.name,
    "controller": TextEditingController,
  },
  {
    "lable": "Gmail",
    "hint": "Please enter your Gmail",
    "keyboardType": TextInputType.emailAddress,
    "controller": TextEditingController,
  },
  {
    "lable": "DOB",
    "hint": "Please enter your DOB",
    "keyboardType": TextInputType.datetime,
    "controller": TextEditingController,
  },
  {
    "lable": "Professional",
    "hint": "Please enter your WORK/STUDY",
    "keyboardType": TextInputType.text,
    "controller": TextEditingController,
  },
  {
    "lable": "Address",
    "hint": "Please enter your Address",
    "keyboardType": TextInputType.streetAddress,
    "controller": TextEditingController,
  },
  {
    "lable": "Phone No",
    "hint": "Please enter your PH.No",
    "keyboardType": TextInputType.number,
    "controller": TextEditingController,
  },
];
