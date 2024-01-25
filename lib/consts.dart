// ignore_for_file: prefer_const_constructors, avoid_print

const bool kIsDebugMode = true;
void dprint(dynamic message) {
  if (kIsDebugMode) {
    print(message);
  }
}

const String kMaterialAppTitle = "Diogo Costa CV";

// ===== Title Section =====
const double kTitleSectionHeight = 700.0;
const double kTitleSectionBGIOpacity = 0.2;
const double kTitleSectionAvatarRadius = 150.0;
