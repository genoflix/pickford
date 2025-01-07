import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

bool maisdeoito(String atual) {
  // verificar se argumento possui mais de 8 caracteres
  if (atual.length > 7) {
    return true;
  } else {
    return false;
  }
}

bool umMaiusculo(String atual) {
  // verificar se o argumento possui pelo menos 1 letra maiuscula, considere apenas letras. Numeros e digitos nao
  // verificar se o argumento possui pelo menos 1 letra maiuscula
  // considerar apenas letras, números e dígitos não
  for (int i = 0; i < atual.length; i++) {
    if (atual[i] == atual[i].toUpperCase() &&
        atual[i].contains(RegExp(r'[A-Z]'))) {
      return true;
    }
  }
  return false;
}

bool umMinusculo(String atual) {
  // verificar se o argumento possui pelo menos 1 letra minuscula, considere apenas letras. Numeros e digitos nao
  // verificar se o argumento possui pelo menos 1 letra minuscula
  // considerar apenas letras, números e dígitos não
  for (int i = 0; i < atual.length; i++) {
    if (atual[i] == atual[i].toLowerCase() &&
        atual[i].contains(RegExp(r'[a-z]'))) {
      return true;
    }
  }
  return false;
}

bool umDigito(String atual) {
  // verificar se o argumento possui pelo menos 1 numro ou digito ou caractere especial
  // verificar se o argumento possui pelo menos 1 número, dígito ou caractere especial
  // considerar apenas letras, números e dígitos não
  for (int i = 0; i < atual.length; i++) {
    if (atual[i].contains(RegExp(r'[0-9]')) ||
        atual[i].contains(RegExp(r'\W'))) {
      return true;
    }
  }
  return false;
}
