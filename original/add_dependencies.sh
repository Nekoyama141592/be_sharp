#!/bin/bash

packages=(
  "auto_route"
  "cached_network_image"
  "cloud_firestore"
  "cloud_functions"
  "collection"
  "cupertino_icons"
  "firebase_auth"
  "firebase_core"
  "firebase_crashlytics"
  "firebase_messaging"
  "firebase_remote_config"
  "flutter_dotenv"
  "flutter_flavor"
  "flutter_flavorizr"
  "flutter_hooks"
  "flutter_riverpod"
  "fluttertoast"
  "font_awesome_flutter"
  "freezed_annotation"
  "google_fonts"
  "google_sign_in"
  "gpt_markdown"
  "hooks_riverpod"
  "image"
  "image_cropper"
  "image_picker"
  "in_app_review"
  "path_provider"
  "riverpod_annotation"
  "shared_preferences"
  "sign_in_with_apple"
  "ulid"
  "url_launcher"
  "mock"
  "fake_cloud_firestore"
  "fake_firebase_security_rules"
  "firebase_auth_mocks"
  "shimmer"
  "purchases_flutter"
  "flutter_dotenv"
)

echo "Adding packages to dependencies..."

# Loop through each package and add it
for package_name in "${packages[@]}"; do
  echo "Adding ${package_name}..."
  flutter pub add "${package_name}"
done

echo "All specified packages have been added."